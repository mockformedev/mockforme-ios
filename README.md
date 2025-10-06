# MockForMe iOS SDK

This repository provides a working example of integrating **MockForMe** in an iOS application using Swift and Swift Package Manager (SPM) for API mocking. Using the `MockForMe` library, developers can simulate API responses without modifying the backend, enabling faster and more reliable iOS API testing, frontend prototyping, and automated scenario simulation.

The library is provided as a **binary XCFramework**, so end users do not need the source code and can easily integrate it as a Swift Package dependency.

---

## Installation

**Using Swift Package Manager:**

1. In Xcode, go to **File → Add Packages → Add Package Dependency**  
2. Enter the repository URL of this project: https://github.com/mockformedev/mockforme-ios
3. Choose the desired version v1.0.0
4. Import the library in your Swift files and use it as:


```swift
import MockForMe
let sdk = mockforme("YOUR_TOKEN_HERE")

sdk.run(
    onSuccess: { mappings, rules in
        print("Mock API initialized successfully")
        print("Mappings:", mappings)
        print("Rules:", rules)
    },
    onError: { error in
        print("Failed to initialize MockForMe:", error)
    }
)
```

## Features
- Simulate API responses without touching the backend.
- Configure rules and delays to mock specific scenarios.
- Compatible with iOS 13+ using async/await, and iOS 12 legacy support.
- Distributed as a binary XCFramework, so source code is not exposed.
- Easy integration via Swift Package Manager.

## Notes
- This library is optimized for Swift-based projects.
- Ensure the correct token from your MockForMe dashboard is used.
- Async calls are fully supported for iOS 13+; iOS 12 uses legacy callbacks.
