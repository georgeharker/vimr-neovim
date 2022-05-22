// swift-tools-version:5.6

import PackageDescription

let package = Package(
  name: "NvimServer",
  platforms: [.macOS(.v10_13)],
  products: [
    .library(name: "NvimServerTypes", targets: ["NvimServerTypes"]),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "NvimServerTypes",
      dependencies: [],
      path: "NvimServerTypes/Sources"
    ),
    .executableTarget(
      name: "NvimServer",
      dependencies: [],
      path: "NvimServer/Sources",
      cSettings: [
        // Otherwise we get typedef redefinition error due to double definition of Boolean
        .unsafeFlags(["-fno-modules"]),
        .define("INCLUDE_GENERATED_DECLARATIONS", to: "1"),
        // The target folder is the working directory.
        .headerSearchPath("../../src"),
        .headerSearchPath("../../build/include"),
        .headerSearchPath("../../.deps/usr/include"),
        .headerSearchPath("../../build/config"),
        .headerSearchPath("../../build/src/nvim/auto/"),
      ],
      linkerSettings: [
        .linkedFramework("CoreServices"),
        .linkedLibrary("util"),
        .linkedLibrary("m"),
        .linkedLibrary("dl"),
        .linkedLibrary("pthread"),
        .linkedLibrary("iconv"),
        .unsafeFlags([
          // These paths seem to depend on where swift build is executed. Xcode does it in the
          // folder where Package.swift is located.
          "build/lib/libnvim.a",
          ".deps/usr/lib/libmsgpackc.a",
          ".deps/usr/lib/libluv.a",
          ".deps/usr/lib/libuv.a",
          ".deps/usr/lib/libvterm.a",
          ".deps/usr/lib/libluajit-5.1.a",
          ".deps/usr/lib/libtree-sitter.a",
        ]),
      ]
    ),
  ],
  cLanguageStandard: .gnu99
)
