#!/bin/bash
set -Eeuo pipefail

build_runtime() {
  local -r deployment_target=$1
  local -r nvim_install_path=$2
  local -r target="--target=$3"

  echo "#### runtime in ${nvim_install_path}"

  echo "### Building nvim to get the complete runtime"
  make \
    SDKROOT="$(xcrun --show-sdk-path)" \
    MACOSX_DEPLOYMENT_TARGET="${deployment_target}" \
    CFLAGS="${target}" \
    CXXFLAGS="${target}" \
    CMAKE_EXTRA_FLAGS="-DGETTEXT_SOURCE=CUSTOM -DCMAKE_OSX_DEPLOYMENT_TARGET=${deployment_target} -DCMAKE_CXX_COMPILER=$(xcrun -find c++)" \
    DEPS_CMAKE_FLAGS="-DCMAKE_OSX_DEPLOYMENT_TARGET=${deployment_target} -DCMAKE_CXX_COMPILER=$(xcrun -find c++)" \
    CMAKE_FLAGS="-DCUSTOM_UI=0 -DCMAKE_INSTALL_PREFIX=${nvim_install_path}" \
    CMAKE_BUILD_TYPE="Release" \
    install
}

package() {
  local -r nvimserver_path=$1
  local -r nvimserver_build_dir_path=$2

  echo "### Packaging"
  local -r resources_path="./NvimServer/Resources"
  local -r package_name="NvimServer"
  local -r package_dir_path="${nvimserver_build_dir_path}/${package_name}"

  rm -rf "${package_dir_path}"
  mkdir -p "${package_dir_path}"
  cp -r "${nvim_install_path}/share/nvim/runtime" "${package_dir_path}"
  cp -r "${nvimserver_path}" "${package_dir_path}"
  cp "${resources_path:?}/"* "${package_dir_path}"

  pushd "${nvimserver_build_dir_path}" >/dev/null
  tar jcvf "${package_name}.tar.bz2" ${package_name}

  echo "### Packaged to ${build_dir_path}/${package_name}.tar.bz2"
  popd >/dev/null
}

build_target() {
  export target=$1
  export build_deps=true
  ./NvimServer/bin/build_nvimserver.sh
  unset target
  unset build_deps
}

main() {
  echo "### Building release"
  # This script is located in /NvimServer/bin and we have to go to /
  pushd "$(dirname "${BASH_SOURCE[0]}")/../.." >/dev/null

    local -r nvim_build_dir_path="$(realpath ./build)"
    local -r nvim_install_path="$(mktemp -d -t 'nvim-runtime')"

    local -r nvimserver_build_dir_prefix="$(realpath ./NvimServer/build)"

    local -r x86_64_deployment_target=$(cat "./NvimServer/Resources/x86_64_deployment_target.txt")
    local -r arm64_deployment_target=$(cat "./NvimServer/Resources/arm64_deployment_target.txt")
    local -r x86_64_target="x86_64-apple-macos${x86_64_deployment_target}"
    local -r arm64_target="arm64-apple-macos${arm64_deployment_target}"

    ./NvimServer/bin/clean_all.sh
    # Build only *once* with x86_64 target; no arm64 build necessary.
    build_runtime "${x86_64_deployment_target}" "${nvim_install_path}" "${x86_64_target}"

    rm -rf "${nvim_build_dir_path}"
    make distclean
    rm -rf "${nvimserver_build_dir_prefix}/x86_64"
    build_target "x86_64"

#    package \
#        "${nvimserver_build_dir_path}/Build/Products/Release/NvimServer" \
#        "${nvimserver_build_dir_path}"

  echo "#### runtime is installed at ${nvim_install_path}/share/nvim/runtime"

  popd >/dev/null
  echo "### Built release"
}

main
