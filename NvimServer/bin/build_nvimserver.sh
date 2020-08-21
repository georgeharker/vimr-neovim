#!/bin/bash
set -Eeuo pipefail

readonly target=${1:?"1st argument = target: x86_64 or arm64"}
readonly build_deps=${2:?"2nd argument = build_deps: true or false"}
readonly build_dir_prefix=${3:?"3rd argument = build_dir_prefix: eg ./NvimServer/build"}

readonly build_dir="${build_dir_prefix}/${target}"

main() {
  echo "### Building libnvim"
  # This script is located in /NvimServer/bin and we have to go to /
  pushd "$(dirname "${BASH_SOURCE[0]}")/../.." >/dev/null
    mkdir -p "${build_dir}"

    ./NvimServer/bin/build_libnvim.sh "${target}" "${build_deps}"
    xcodebuild ARCHS="${target}" -derivedDataPath "${build_dir}" -configuration Release -scheme NvimServer build

  popd >/dev/null
  echo "### Built libnvim"
}

main
