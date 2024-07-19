import ComposableArchitecture
import LoginCore

@Reducer(state: .equatable)
public enum TicTac {
    case login(Login)
    
    public static var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .login(.twoFactor(.presented(.twoFactorResponse(.success)))):
                return .none
                
            case .login(.loginResponse(.success(let response))) where !response.twoFactorRequired:
                return .none
                
            case .login:
                return .none
            }
        }
        .ifLet(\.login, action: \.login) {
            Login()
        }
    }
}
