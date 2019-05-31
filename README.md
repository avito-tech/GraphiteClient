GraphiteClient
===============

Lightweight Swift framework for feeding data into [Graphite](https://graphite.readthedocs.io/en/latest/overview.html) and [statsD](https://github.com/statsd/statsd).

# Getting Started

## Installation

### Swift Package Manager

Add the dependency in your `Package.swift` file:

```swift
let package = Package(
    name: "project",
    dependencies: [
        .package(
            url: "https://github.com/avito-tech/GraphiteClient.git", 
            .upToNextMajor(from: "0.1.0")
        ),
    ],
    targets: [
        .target(
            name: "YourProjectName",
            dependencies: [
                "GraphiteClient"
            ]
        )
    ]
)
```
### CocoaPods
To integrate GraphiteClient into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'GraphiteClient', '~> 0.1'
```

## Usage

```swift
import GraphiteClient

let streamProvider = NetworkSocketOutputStreamProvider(
    host: host,
    port: port
)
let easyOutputStream = EasyOutputStream(
    outputStreamProvider: streamProvider,
    errorHandler: { stream, error in
        debugPrint("Graphite stream error: \(error)")
    },
    streamEndHandler: { stream in
        debugPrint("Graphite stream has been closed")
    }
)
try easyOutputStream.open()
let client = GraphiteClient(
    easyOutputStream: easyOutputStream
)
try client.send(
    path: [
        "some",
        "metric",
        "path"
    ],
    value: 42.0,
    timestamp: Date()
)
```
