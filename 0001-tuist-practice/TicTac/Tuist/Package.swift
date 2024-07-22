// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,]
        
        // The Composable Architecture compatibility issues #6320
        // Solved: https://github.com/tuist/tuist/issues/6320
        productTypes: [
            "ComposableArchitecture": .framework,
            "Dependencies": .framework,
            "Perception": .framework,
            "XCTestDynamicOverlay": .framework
        ]
    )
#endif

let package = Package(
    name: "TicTac",
    dependencies: [
        // Add your own dependencies here:
        // .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
        // You can read more about dependencies here: https://docs.tuist.io/documentation/tuist/dependencies
        
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.11.2")
    ]
)
