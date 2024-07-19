import AppCore
import ComposableArchitecture
import LoginUI
import SwiftUI

public struct AppView: View {
    let store: StoreOf<TicTac>
    
    public init(store: StoreOf<TicTac>) {
        self.store = store
    }
    
    public var body: some View {
        NavigationStack {
            switch store.case {
            case .login(let store):
                LoginView(store: store)
            }
        }
    }
}
