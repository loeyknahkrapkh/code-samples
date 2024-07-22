import ProjectDescription

let project = Project(
    name: "GameCore",
    targets: [
        .target(
            name: "GameCore",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.GameCore",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared"),
            ]
        )
    ]
)
