import ProjectDescription

let project = Project(
    name: "LoginUI",
    targets: [
        .target(
            name: "LoginUI",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.LoginUI",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "LoginCore", path: "../LoginCore"),
                .project(target: "TwoFactorUI", path: "../TwoFactorUI"),
            ]
        )
    ]
)
