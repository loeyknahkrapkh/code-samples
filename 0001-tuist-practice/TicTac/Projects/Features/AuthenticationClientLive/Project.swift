import ProjectDescription

let project = Project(
    name: "AuthenticationClientLive",
    targets: [
        .target(
            name: "AuthenticationClientLive",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.AuthenticationClientLive",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "AuthenticationClient", path: "../AuthenticationClient"),
            ]
        )
    ]
)
