import ProjectDescription

let project = Project(
    name: "GameUI",
    targets: [
        .target(
            name: "GameUI",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.GameUI",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "GameCore", path: "../GameCore"),
            ]
        )
    ]
)
