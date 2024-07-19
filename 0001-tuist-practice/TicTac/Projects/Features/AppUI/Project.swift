import ProjectDescription

let project = Project(
    name: "AppUI",
    targets: [
        .target(
            name: "AppUI",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.AppUI",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "AppCore", path: "../AppCore"),
                .project(target: "LoginUI", path: "../LoginUI"),
            ]
        )
    ]
)
