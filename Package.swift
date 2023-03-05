// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CosmosSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CosmosSDK",
            targets: ["CosmosSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf", exact: "1.21.0"),
        .package(url: "https://github.com/grpc/grpc-swift.git", exact: "1.14.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CosmosSDK",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]),
        .testTarget(
            name: "CosmosSDKTests",
            dependencies: ["CosmosSDK"]),
    ],
    swiftLanguageVersions: [.v5]
)
