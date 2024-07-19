import AuthenticationClient
import ComposableArchitecture
import SwiftUI
import TwoFactorCore

@ViewAction(for: TwoFactor.self)
public struct TwoFactorView: View {
    @Bindable var store: StoreOf<TwoFactor>
    
    public init(store: StoreOf<TwoFactor>) {
        self.store = store
    }
    
    public var body: some View {
        Form {
            Text(#"To confirm the second factor enter "1234" into the form."#)
        }
    }
}

#Preview {
    TwoFactorView(store: .init(
        initialState: TwoFactor.State(token: "deadbeef"),
        reducer: { TwoFactor() },
        withDependencies: { $0.authenticationClient = .previewValue }
    ))
}
