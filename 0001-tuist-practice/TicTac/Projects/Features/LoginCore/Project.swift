import ProjectDescription

let project = Project(
    name: "LoginCore",
    targets: [
        .target(
            name: "LoginCore",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.LoginCore",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared"),
                .project(target: "AuthenticationClient", path: "../AuthenticationClient"),
                .project(target: "TwoFactorCore", path: "../TwoFactorCore"),
            ]
        )
    ]
)
