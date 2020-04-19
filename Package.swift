// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "LascorbeCom",
    products: [
        .executable(name: "LascorbeCom", targets: ["LascorbeCom"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.5.0"),
        .package(url: "https://github.com/johnsundell/splashpublishplugin", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "LascorbeCom",
            dependencies: ["Publish", "SplashPublishPlugin"]
        )
    ]
)
