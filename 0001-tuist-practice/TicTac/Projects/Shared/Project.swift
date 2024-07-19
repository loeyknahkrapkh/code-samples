import ProjectDescription

let project = Project(
    name: "Shared",
    targets: [
        .target(
            name: "Shared",
            destinations: [.iPhone],
            product: .framework,
            bundleId: "com.test.Shared",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .external(name: "ComposableArchitecture"),
            ]
//            settings: .settings(
//                base: ["OTHER_LDFLAGS": "$(inherited) -ObjC"],
//                configurations: []
//            )
        )
    ]
)
