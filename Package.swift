// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "GraphiteClient",
    products: [
        .library(
            name: "AtomicModels",
            targets: ["AtomicModels"]
        ),
        .library(
            name: "GraphiteClient",
            targets: ["GraphiteClient"]
        ),
        .library(
            name: "IO",
            targets: ["IO"]
        )
    ],
    targets: [
        // MARK: AtomicModels
        .target(
            name: "AtomicModels",
            dependencies: []
        ),
        // MARK: GraphiteClient
        .target(
            name: "GraphiteClient",
            dependencies: [
                "IO"
            ]
        ),
        // MARK: GraphiteClientTests
        .testTarget(
            name: "GraphiteClientTests",
            dependencies: [
                "GraphiteClient"
            ]
        ),
        // MARK: IO
        .target(
            name: "IO",
            dependencies: [
                "AtomicModels"
            ]
        ),
        // MARK: IOTests
        .testTarget(
            name: "IOTests",
            dependencies: [
                "IO"
            ]
        )
    ],
    swiftLanguageVersions: [.v4_2]
)
