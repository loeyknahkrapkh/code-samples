import AppCore
import ComposableArchitecture
import LoginUI
import NewGameUI
import SwiftUI

public struct AppView: View {
    let store: StoreOf<TicTac>
    
    public init(store: StoreOf<TicTac>) {
        self.store = store
    }
    
    public var body: some View {
        switch store.case {
        case .login(let store):
            NavigationStack {
                LoginView(store: store)
            }
        case .newGame(let store):
            NavigationStack {
                NewGameView(store: store)
            }
        }
    }
}
