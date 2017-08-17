// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "COpenGL-Example",
    dependencies: [
        .package(url: "https://github.com/ajh17/COpenGL", from: "1.0.0"),
    ],
    targets: [
        .target(name: "OpenGL-Example", dependencies: []),
    ]
)
