// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MockForMe",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "MockForMe",
            targets: ["MockForMe"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MockForMe",
            path: "./MockForMe.xcframework"
        )
    ]
)

