import ProjectDescription

let project = Project(
    name: "AuthenticationClient",
    targets: [
        .target(
            name: "AuthenticationClient",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.AuthenticationClient",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared"),
            ]
        )
    ]
)
