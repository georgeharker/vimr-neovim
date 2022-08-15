// swift-tools-version:5.6

import PackageDescription

let package = Package(
  name: "NvimServer",
  platforms: [.macOS(.v10_13)],
  products: [
    .library(name: "NvimServerTypes", targets: ["NvimServerTypes"]),
    .library(name: "RxNeovim", targets: ["RxNeovim"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMinor(from: "6.5.0")),
    .package(url: "https://github.com/a2/MessagePack.swift", from: "4.0.0"),
    .package(url: "https://github.com/qvacua/RxPack.swift", from: "0.1.0"),
  ],
  targets: [
    .target(name: "NvimServerTypes", dependencies: [], path: "NvimServerTypes/Sources"),
    .target(
      name: "RxNeovim",
      dependencies: [
        .product(name: "RxSwift", package: "RxSwift"),
        .product(name: "RxPack", package: "RxPack.swift"),
        .product(name: "MessagePack", package: "MessagePack.swift"),
      ],
      path: "RxNeovim/Sources"
    ),
    .testTarget(
      name: "RxNeovimTests",
      dependencies: ["RxNeovim"],
      path: "RxNeovim/Tests"
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
        .headerSearchPath("../../build/cmake.config"),
        .headerSearchPath("../../build/src/nvim/auto/"),
        .headerSearchPath("../../NvimServer/third-party/gettext/include"),
      ],
      linkerSettings: [
        .linkedFramework("CoreServices"),
        .linkedFramework("CoreFoundation"),
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
          ".deps/usr/lib/libuv_a.a",
          ".deps/usr/lib/libvterm.a",
          ".deps/usr/lib/libluajit-5.1.a",
          ".deps/usr/lib/libtree-sitter.a",
          "NvimServer/third-party/gettext/lib/libintl.a",
        ]),
      ]
    ),
  ],
  cLanguageStandard: .gnu99
)
