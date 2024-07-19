import AuthenticationClient
import ComposableArchitecture
import SwiftUI
import TwoFactorCore

@ViewAction(for: TwoFactor.self)
public struct TwoFactorView: View {
    @Bindable public var store: StoreOf<TwoFactor>
    
    public init(store: StoreOf<TwoFactor>) {
        self.store = store
    }
    
    public var body: some View {
        Form {
            Text(#"To confirm the second factor enter "1234" into the form."#)
            
            Section {
                TextField("1234", text: $store.code)
                    .keyboardType(.numberPad)
            }
            
            HStack {
                Button("Submit") {
                    _ = UIApplication.shared.sendAction(
                        #selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil
                    )
                    send(.submitButtonTapped)
                }
                .frame(maxWidth: .infinity)
                .disabled(store.isSubmitButtonDisabled)
                
                if store.isActivityIndicatorVisible {
                    Spacer()
                    ProgressView()
                }
            }
        }
        .alert($store.scope(state: \.alert, action: \.alert))
        .disabled(store.isFormDisabled)
        .navigationTitle("Confirmation Code")
    }
}

extension TwoFactor.State {
    fileprivate var isActivityIndicatorVisible: Bool { self.isTwoFactorRequestInFlight }
    fileprivate var isFormDisabled: Bool { self.isTwoFactorRequestInFlight }
    fileprivate var isSubmitButtonDisabled: Bool { !self.isFormValid }
}

#Preview {
    NavigationStack {
        TwoFactorView(store: .init(
            initialState: TwoFactor.State(token: "deadbeef"),
            reducer: { TwoFactor() },
            withDependencies: { $0.authenticationClient = .previewValue }
        ))
    }
}
