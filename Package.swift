// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "VaporMonitoring",
    products: [
        .library(name: "VaporMonitoring", targets: ["VaporMonitoring"]),
        .executable(name: "MonitoringExample", targets: ["MonitoringExample"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-metrics.git", from: "1.0.0"),
        .package(url: "https://github.com/Yasumoto/SwiftPrometheus.git", .branch("yasumoto-summary-seconds")),
        .package(url: "https://github.com/vapor/vapor.git", from: "3.1.0"),
    ],
    targets: [
        .target(name: "VaporMonitoring", dependencies: ["Metrics", "SwiftPrometheus", "Vapor"]),
      .target(name: "MonitoringExample", dependencies: ["VaporMonitoring"])
    ]
)
