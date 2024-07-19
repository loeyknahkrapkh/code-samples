import ProjectDescription

let project = Project(
    name: "Application",
    targets: [
        .target(
            name: "TicTac",
            destinations: [.iPhone],
            product: .app,
            bundleId: "com.test.TicTac",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [],
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Shared", path: "../Shared"),
                .project(target: "AppCore", path: "../Features/AppCore"),
                .project(target: "AppUI", path: "../Features/AppUI"),
                .project(target: "AuthenticationClientLive", path: "../Features/AuthenticationClientLive"),
            ]
        )
    ]
)
