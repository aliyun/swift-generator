// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
        name: "Package",
        products: [
            .library(
                    name: "Package",
                    targets: ["Package"])
        ],
        dependencies: [
            // Dependencies declare other packages that this package depends on.
            .package(url: "https://github.com/darabonba/Import.git", from: "0.0.1"),
        ],
        targets: [
            .target(
                    name: "Package",
                    dependencies: ["Import"]),
        ],
        swiftLanguageVersions: [.v5]
)
