import ProjectDescription

let workspace = Workspace(
    name: "TicTac",
    projects: [
        "Projects/Application",
        "Projects/Shared",
        
        "Projects/Features/AppCore",
        "Projects/Features/AppUI",
        "Projects/Features/AuthenticationClient",
        "Projects/Features/AuthenticationClientLive",
        "Projects/Features/TwoFactorCore",
        "Projects/Features/TwoFactorUI",
        "Projects/Features/LoginCore",
        "Projects/Features/LoginUI",
    ]
)
