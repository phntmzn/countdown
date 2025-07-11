// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MenuBarCountdown",
    platforms: [.macOS("13.0")],
    targets: [
        .executableTarget(name: "MenuBarCountdown", path: "Sources/MenuBarCountdown")
    ]
)
