import ProjectDescription

let project = Project(
    name: "TwoFactorCore",
    targets: [
        .target(
            name: "TwoFactorCore",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.TwoFactorCore",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared"),
                .project(target: "AuthenticationClient", path: "../AuthenticationClient"),
            ]
        )
    ]
)
