import ProjectDescription

let project = Project(
    name: "NewGameCore",
    targets: [
        .target(
            name: "NewGameCore",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.NewGameCore",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared"),
                .project(target: "GameCore", path: "../GameCore"),
            ]
        )
    ]
)
