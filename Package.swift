// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "BrooklynJailbreakRepo",
	platforms: [.macOS(.v13)],
	dependencies: [.package(url: "https://github.com/BrooklynSwift/Brooklyn", branch: "main")],
	targets: [
		.executableTarget(
			name: "BrooklynJailbreakRepo",
			dependencies: ["Brooklyn"]
		)
	]
)
