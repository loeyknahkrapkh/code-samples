import ProjectDescription

let project = Project(
    name: "AppCore",
    targets: [
        .target(
            name: "AppCore",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.AppCore",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared"),
                .project(target: "AuthenticationClient", path: "../AuthenticationClient"),
                .project(target: "LoginCore", path: "../LoginCore"),
            ]
        )
    ]
)
