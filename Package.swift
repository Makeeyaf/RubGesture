// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "RubGesture",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        .library(name: "RubGesture", targets: ["RubGesture"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "RubGesture", dependencies: []),
        .testTarget(name: "RubGestureTests", dependencies: ["RubGesture"]),
    ]
)
