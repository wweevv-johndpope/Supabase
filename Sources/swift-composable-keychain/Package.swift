// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ComposableKeychain",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "ComposableKeychain",
      targets: ["ComposableKeychain"])
  ],
  dependencies: [
    .package(path: "../KeychainAccess"),
    .package(path: "../xctest-dynamic-overlay"),
  ],
  targets: [
    .target(
      name: "ComposableKeychain",
      dependencies: [
        "KeychainAccess",
        .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay"),
      ]),
    .testTarget(
      name: "ComposableKeychainTests",
      dependencies: ["ComposableKeychain"]),
  ]
)
