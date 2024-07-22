import ProjectDescription

let project = Project(
    name: "NewGameUI",
    targets: [
        .target(
            name: "NewGameUI",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.NewGameUI",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "NewGameCore", path: "../NewGameCore"),
                .project(target: "GameUI", path: "../GameUI"),
            ]
        )
    ]
)
