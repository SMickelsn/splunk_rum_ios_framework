// swift-tools-version: 5.9

import PackageDescription

/// Swift Package wrapper for pre-built Splunk RUM Agent XCFrameworks.
///
/// Add this package as a single dependency to get all required xcframeworks.
/// Use product `SplunkAgent` for Swift, or `SplunkAgentObjC` for Objective-C.
let package = Package(
    name: "SplunkRumXCFrameworks",
    platforms: [
        .iOS(.v13),
        .tvOS(.v15),
        .visionOS(.v1),
        .macCatalyst(.v15)
    ],
    products: [
        .library(
            name: "SplunkAgent",
            targets: [
                "SplunkAgent", "SplunkAgentObjC", "SplunkCommon", "SplunkNavigation",
                "SplunkNetwork", "SplunkNetworkMonitor", "SplunkSlowFrameDetector",
                "SplunkCrashReports", "SplunkOpenTelemetry", "SplunkOpenTelemetryBackgroundExporter",
                "SplunkInteractions", "SplunkAppStart", "SplunkAppState", "SplunkWebView",
                "SplunkCustomTracking", "SplunkSessionReplayProxy",
                "OpenTelemetryApi", "OpenTelemetrySdk", "CrashReporter",
                "CiscoLogger", "CiscoEncryption", "CiscoSwizzling", "CiscoInteractions",
                "CiscoDiskStorage", "CiscoSessionReplay", "CiscoInstanceManager", "CiscoRuntimeCache"
            ]
        ),
        .library(
            name: "SplunkAgentObjC",
            targets: [
                "SplunkAgent", "SplunkAgentObjC", "SplunkCommon", "SplunkNavigation",
                "SplunkNetwork", "SplunkNetworkMonitor", "SplunkSlowFrameDetector",
                "SplunkCrashReports", "SplunkOpenTelemetry", "SplunkOpenTelemetryBackgroundExporter",
                "SplunkInteractions", "SplunkAppStart", "SplunkAppState", "SplunkWebView",
                "SplunkCustomTracking", "SplunkSessionReplayProxy",
                "OpenTelemetryApi", "OpenTelemetrySdk", "CrashReporter",
                "CiscoLogger", "CiscoEncryption", "CiscoSwizzling", "CiscoInteractions",
                "CiscoDiskStorage", "CiscoSessionReplay", "CiscoInstanceManager", "CiscoRuntimeCache"
            ]
        )
    ],
    targets: [
        // MARK: - Splunk modules
        .binaryTarget(name: "SplunkAgent", path: "SplunkAgent.xcframework"),
        .binaryTarget(name: "SplunkAgentObjC", path: "SplunkAgentObjC.xcframework"),
        .binaryTarget(name: "SplunkCommon", path: "SplunkCommon.xcframework"),
        .binaryTarget(name: "SplunkNavigation", path: "SplunkNavigation.xcframework"),
        .binaryTarget(name: "SplunkNetwork", path: "SplunkNetwork.xcframework"),
        .binaryTarget(name: "SplunkNetworkMonitor", path: "SplunkNetworkMonitor.xcframework"),
        .binaryTarget(name: "SplunkSlowFrameDetector", path: "SplunkSlowFrameDetector.xcframework"),
        .binaryTarget(name: "SplunkCrashReports", path: "SplunkCrashReports.xcframework"),
        .binaryTarget(name: "SplunkOpenTelemetry", path: "SplunkOpenTelemetry.xcframework"),
        .binaryTarget(name: "SplunkOpenTelemetryBackgroundExporter", path: "SplunkOpenTelemetryBackgroundExporter.xcframework"),
        .binaryTarget(name: "SplunkInteractions", path: "SplunkInteractions.xcframework"),
        .binaryTarget(name: "SplunkAppStart", path: "SplunkAppStart.xcframework"),
        .binaryTarget(name: "SplunkAppState", path: "SplunkAppState.xcframework"),
        .binaryTarget(name: "SplunkWebView", path: "SplunkWebView.xcframework"),
        .binaryTarget(name: "SplunkCustomTracking", path: "SplunkCustomTracking.xcframework"),
        .binaryTarget(name: "SplunkSessionReplayProxy", path: "SplunkSessionReplayProxy.xcframework"),
        // MARK: - OpenTelemetry
        .binaryTarget(name: "OpenTelemetryApi", path: "OpenTelemetryApi.xcframework"),
        .binaryTarget(name: "OpenTelemetrySdk", path: "OpenTelemetrySdk.xcframework"),
        // MARK: - Crash reporting
        .binaryTarget(name: "CrashReporter", path: "CrashReporter.xcframework"),
        // MARK: - Session Replay (Cisco)
        .binaryTarget(name: "CiscoLogger", path: "CiscoLogger.xcframework"),
        .binaryTarget(name: "CiscoEncryption", path: "CiscoEncryption.xcframework"),
        .binaryTarget(name: "CiscoSwizzling", path: "CiscoSwizzling.xcframework"),
        .binaryTarget(name: "CiscoInteractions", path: "CiscoInteractions.xcframework"),
        .binaryTarget(name: "CiscoDiskStorage", path: "CiscoDiskStorage.xcframework"),
        .binaryTarget(name: "CiscoSessionReplay", path: "CiscoSessionReplay.xcframework"),
        .binaryTarget(name: "CiscoInstanceManager", path: "CiscoInstanceManager.xcframework"),
        .binaryTarget(name: "CiscoRuntimeCache", path: "CiscoRuntimeCache.xcframework")
    ]
)
