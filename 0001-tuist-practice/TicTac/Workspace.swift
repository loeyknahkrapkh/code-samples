import ProjectDescription

let workspace = Workspace(
    name: "TicTac",
    projects: [
        "Sources/Application",
        "Sources/Shared",
        "Sources/AuthenticationClient",
        "Sources/AuthenticationClientLive",
        "Sources/TwoFactorCore",
        "Sources/TwoFactorUI",
    ]
)
