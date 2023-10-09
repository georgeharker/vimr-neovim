#!/bin/bash
set -Eeuo pipefail
shopt -s extglob

main() {
  # This script is located in /NvimServer/bin and we have to go to /
  pushd "$(dirname "${BASH_SOURCE[0]}")/../.." >/dev/null

    rm -rf ./NvimServer/third-party
    mkdir -p NvimServer/third-party

    local arm64_bottle
    arm64_bottle=$(jq -r .gettext.arm64BottleTag ./NvimServer/Resources/buildInfo.json)
    readonly arm64_bottle

    local x86_64_bottle
    x86_64_bottle=$(jq -r .gettext.x86_64BottleTag ./NvimServer/Resources/buildInfo.json)
    readonly x86_64_bottle

    pushd ./NvimServer/third-party >/dev/null
      brew fetch --bottle-tag="${arm64_bottle}" gettext
      brew fetch --bottle-tag="${x86_64_bottle}" gettext

      local version; version=$(brew info gettext --json | jq -r ".[0].versions.stable"); readonly version
      echo "### gettext version ${version}"

      local temp_dir; temp_dir="$(mktemp -d)"; readonly temp_dir
      echo "${temp_dir}"

      pushd "${temp_dir}" >/dev/null
        mkdir "${arm64_bottle}"
        pushd "${arm64_bottle}" >/dev/null
          tar xf "$(brew --cache)"/**/*gettext--+([0-9.])${arm64_bottle}*.tar.gz
        popd >/dev/null

        mkdir "${x86_64_bottle}"
        pushd "${x86_64_bottle}" >/dev/null
          tar xf "$(brew --cache)"/**/*gettext--+([0-9.])${x86_64_bottle}*.tar.gz
        popd >/dev/null

        mkdir universal
        cp -r "${arm64_bottle}/gettext/${version}/include" ./universal/
        mkdir universal/lib
        lipo "${arm64_bottle}/gettext/${version}/lib/libintl.a" "${x86_64_bottle}/gettext/${version}/lib/libintl.a" -create -output ./universal/lib/libintl.a
      popd >/dev/null

    mv "${temp_dir}/universal" gettext
    rm -rf "${temp_dir}"

    popd >/dev/null

  popd >/dev/null
}

main
