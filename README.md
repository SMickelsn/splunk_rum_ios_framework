# Splunk RUM Agent – XCFramework Swift Package

This directory is a **Swift Package Manager (SPM) wrapper** around the pre-built Splunk RUM Agent xcframeworks. Add it as a single dependency to get all required frameworks instead of linking each xcframework manually.

## Usage

### Local path (e.g. after building or extracting a release)

In your app’s `Package.swift` or Xcode: **File → Add Package Dependencies** and add a **local** package:

- **Path:** path to this folder (the one containing this `Package.swift` and the `.xcframework` bundles).

Example in `Package.swift`:

```swift
dependencies: [
    .package(path: "../path/to/xcframeworks")
]
```

Then link one product:

- **Swift:** add `SplunkAgent` to your target.
- **Objective-C:** add `SplunkAgentObjC` to your target (it includes the Swift API as well).

### Remote (Git or URL)

If this folder is in a Git repo or you host a zip of it:

- Add the package by URL (e.g. `https://github.com/your-org/your-repo`, with the package root at this folder), **or**
- Use a **binary** distribution: host a zip of this directory and use `.package(url:checksum:)` pointing to that zip (the repo would need to expose a `Package.swift` at the zip root that matches this one).

## Products

| Product          | Use case                          |
|------------------|------------------------------------|
| `SplunkAgent`    | Swift: `import SplunkRum` and use the Swift API. |
| `SplunkAgentObjC`| Objective-C: use `SPLKSplunkRum` and the Obj-C API. |

One product is enough; both include all underlying xcframeworks (Splunk modules, OpenTelemetry, CrashReporter, Session Replay).

## Requirements

- Swift 5.9+
- iOS 13+, tvOS 15+, visionOS 1+, macCatalyst 15+
- This folder must contain all referenced `.xcframework` bundles (Splunk*, OpenTelemetry*, CrashReporter, Cisco*). Build them with the parent `tools/xcframework` Makefile or use an official release that includes them.
