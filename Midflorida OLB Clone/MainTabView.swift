import SwiftUI

// Root view shown after login. Handles the main tab navigation.
struct MainTabView: View {
    // Represents each tab in the bottom tab bar
    enum Tab: Hashable {
        case home
        case transfers
        case deposit
        case cards

        var title: String {
            switch self {
            case .home: return "Home"
            case .transfers: return "Transfers"
            case .deposit: return "Deposit"
            case .cards: return "Cards"
            }
        }

        var systemImage: String {
            switch self {
            case .home: return "house"
            case .transfers: return "arrow.left.arrow.right"
            case .deposit: return "camera"
            case .cards: return "creditcard"
            }
        }
    }

    // Keeps track of the currently selected tab
    @State private var selectedTab: Tab = .home

    var body: some View {
        // Standard iOS tab bar with liquid glass appearance
        TabView(selection: $selectedTab) {
            NavigationStack { HomeView() }
                .tag(Tab.home)
                .tabItem { Label(Tab.home.title, systemImage: Tab.home.systemImage) }

            NavigationStack { TransfersView() }
                .tag(Tab.transfers)
                .tabItem { Label(Tab.transfers.title, systemImage: Tab.transfers.systemImage) }

            NavigationStack { DepositView() }
                .tag(Tab.deposit)
                .tabItem { Label(Tab.deposit.title, systemImage: Tab.deposit.systemImage) }

            NavigationStack { CardsView() }
                .tag(Tab.cards)
                .tabItem { Label(Tab.cards.title, systemImage: Tab.cards.systemImage) }
        }
        .toolbarBackground(.ultraThinMaterial, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
    }
}

// Placeholder for the Accounts/Home screen
private struct HomeView: View {
    var body: some View {
        Color.clear
            .navigationTitle("Accounts")
            .navigationBarTitleDisplayMode(.inline)
    }
}

// Placeholder for the Transfers screen
private struct TransfersView: View {
    var body: some View {
        Color.clear
            .navigationTitle("Transfers")
            .navigationBarTitleDisplayMode(.inline)
    }
}

// Placeholder for the Deposit screen
private struct DepositView: View {
    var body: some View {
        Color.clear
            .navigationTitle("Deposit")
            .navigationBarTitleDisplayMode(.inline)
    }
}

// Placeholder for the Cards screen
private struct CardsView: View {
    var body: some View {
        Color.clear
            .navigationTitle("Cards")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MainTabView()
        .tint(.blue)
}
