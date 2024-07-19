import AuthenticationClient
import ComposableArchitecture
import LoginCore
import SwiftUI
import TwoFactorCore
import TwoFactorUI

@ViewAction(for: Login.self)
public struct LoginView: View {
    @Bindable public var store: StoreOf<Login>
    
    public init(store: StoreOf<Login>) {
        self.store = store
    }
    
    public var body: some View {
        Form {
            Text(
            """
            To login use any email and "password" for the password. If your email contains the \
            characters "2fa" you will be taken to a two-factor flow, and on that screen you can \
            use "1234" for the code.
            """
            )
            
            Section {
                TextField("blob@pointfree.co", text: $store.email)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
                
                SecureField("••••••••", text: $store.password)
            }
            
            Button {
                _ = UIApplication.shared.sendAction(
                    #selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil
                )
                send(.loginButtonTapped)
            } label: {
                HStack {
                    Text("Log in")
                    if store.isActivityIndicatorVisible {
                        Spacer()
                        ProgressView()
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .disabled(store.isLoginButtonDisabled)
        }
        .disabled(store.isFormDisabled)
        .alert($store.scope(state: \.alert, action: \.alert))
        .navigationDestination(
            item: $store.scope(
                state: \.twoFactor,
                action: \.twoFactor
            )
        ) { store in
            TwoFactorView(store: store)
        }
        .navigationTitle("Login")
    }
}

extension Login.State {
    fileprivate var isActivityIndicatorVisible: Bool { self.isLoginRequestInFlight }
    fileprivate var isFormDisabled: Bool { self.isLoginRequestInFlight }
    fileprivate var isLoginButtonDisabled: Bool { !self.isFormValid }
}

#Preview {
    NavigationStack {
        LoginView(store: .init(
            initialState: Login.State(),
            reducer: { Login() },
            withDependencies: { $0.authenticationClient = .previewValue }
        ))
    }
}
