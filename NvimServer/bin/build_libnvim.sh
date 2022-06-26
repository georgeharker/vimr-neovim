#!/bin/bash
set -Eeuo pipefail

readonly clean=${clean:?"true or false"}

build_libnvim() {
  local -r deployment_target=$1

  # Brew's gettext does not get sym-linked to PATH
  export PATH="/opt/homebrew/opt/gettext/bin:/usr/local/opt/gettext/bin:${PATH}"

  macos_flags="-DCMAKE_OSX_DEPLOYMENT_TARGET=${deployment_target} -DCMAKE_OSX_ARCHITECTURES=arm64\;x86_64"

  # W/o setting MACOSX_DEPLOYMENT_TARGET, the dependencies have min. macOS set to the macOS you're on.
  make \
    CMAKE_BUILD_TYPE=Release \
    SDKROOT="$(xcrun --show-sdk-path)" \
    MACOSX_DEPLOYMENT_TARGET="${deployment_target}" \
    CMAKE_EXTRA_FLAGS="-DENABLE_LIBINTL=OFF -DCUSTOM_UI=1 -DFEAT_TUI=0 ${macos_flags}" \
    DEPS_CMAKE_FLAGS="${macos_flags}" \
    libnvim
}

main() {
  # This script is located in /NvimServer/bin and we have to go to /
  pushd "$(dirname "${BASH_SOURCE[0]}")/../.." >/dev/null

  echo "### Building libnvim"
  local deployment_target
  deployment_target=$(cat "./NvimServer/Resources/macos_deployment_target.txt")
  readonly deployment_target

  if [[ "${clean}" == true ]]; then
    make distclean
  fi

  build_libnvim "${deployment_target}"

  popd >/dev/null
  echo "### Built libnvim"
}

main

