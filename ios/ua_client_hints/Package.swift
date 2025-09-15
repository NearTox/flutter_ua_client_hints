// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to
// build this package.

import PackageDescription

let version = "1.4.1"

let package = Package(
  name: "ua_client_hints",
  platforms: [
    .iOS("10.0"),
  ],
  products: [
    .library(
      name: "ua-client-hints",
      targets: ["ua_client_hints"]
    ),
  ],
  targets: [
    .target(
      name: "ua_client_hints",
      resources: [.process("./PrivacyInfo.xcprivacy")],
      cSettings: [
        .define("LIBRARY_VERSION", to: "\"\(version)\""),
      ],
      swiftSettings: [.swiftLanguageMode(.v5)]
    ),
  ]
)
