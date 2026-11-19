#!/usr/bin/env bash
set -euo pipefail

source_repo=mewcomputer/mew
tag="$(curl -fsSL --retry 3 --proto '=https' --proto-redir '=https' \
    "https://api.github.com/repos/$source_repo/releases?per_page=100" |
    jq -r 'map(select(.prerelease and (.draft | not) and
        (.tag_name | test("^nightly-v[0-9]+\\.[0-9]+\\.[0-9]+-pre\\.[0-9]{8}\\.[0-9]+$")))) |
        max_by(.tag_name | [scan("[0-9]+") | tonumber]) | .tag_name // empty')"
if [[ -z "$tag" ]]; then
    echo 'No published Homebrew nightly snapshots.'
    exit 0
fi

version="${tag#nightly-v}"
version_of() {
    sed -n 's/^  version "\([^"]*\)"$/\1/p' "$1"
}
current="$(version_of Formula/mew.rb)"
if ! ruby -rrubygems -e 'exit(Gem::Version.new(ARGV[0]) > Gem::Version.new(ARGV[1]) ? 0 : 1)' "$version" "$current"; then
    echo "Formula already at $current or newer."
    exit 0
fi

candidate="$(mktemp)"
trap 'rm -f "$candidate"' EXIT
curl -fsSL --retry 3 --proto '=https' --proto-redir '=https' \
    "https://github.com/$source_repo/releases/download/$tag/mew.rb" -o "$candidate"
ruby -c "$candidate"
test "$(version_of "$candidate")" = "$version"
cat "$candidate" > Formula/mew.rb
echo "Updated Mew to $version."
