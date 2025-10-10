# MockForMe iOS SDK

This repository provides a working example of integrating **MockForMe** in an iOS application using Swift and Swift Package Manager (SPM) for API mocking. Using the `MockForMe` library, developers can simulate API responses without modifying the backend, enabling faster and more reliable iOS API testing, frontend prototyping, and automated scenario simulation.

The library is provided as a **binary XCFramework**, so end users do not need the source code and can easily integrate it as a Swift Package dependency.

---

## Installation

**Using Swift Package Manager:**

1. In Xcode, go to **File → Add Packages → Add Package Dependency**  
2. Enter the repository URL of this project: https://github.com/mockformedev/mockforme-ios
3. Choose the version v1.0.0
4. Import the library in your Swift files and use it as:


```swift
import MockForMe

mockforme("ACCESS_TOKEN").run(
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

> **Access Token:** To get access token visit: [https://dashboard.mockforme.com/user/token](https://dashboard.mockforme.com/user/token)

> Once the configuration is complete, you can create mock APIs directly from the [MockForMe dashboard](https://dashboard.mockforme.com).
> Simply go to Create Collection → Create API → Define API Responses.
> 
> For example, we’ve created a mock API with the **endpoint** `/user/me` and **method** `GET` in mockforme, which is being used in the `src/App.js` file.

<hr />
✅ That’s it! Just add these few lines and `mockforme` will start mocking your APIs.

<br />

👉 Watch how to create mock API using mockforme in YouTube video:
[https://www.youtube.com/watch?v=V1_leclmpTw](https://www.youtube.com/watch?v=V1_leclmpTw)
