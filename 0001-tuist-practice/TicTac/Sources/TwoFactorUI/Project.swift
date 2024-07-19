import ProjectDescription

let project = Project(
    name: "TwoFactorUI",
    targets: [
        .target(
            name: "TwoFactorUI",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.TwoFactorUI",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "TwoFactorCore", path: "../TwoFactorCore"),
            ]
        )
    ]
)
