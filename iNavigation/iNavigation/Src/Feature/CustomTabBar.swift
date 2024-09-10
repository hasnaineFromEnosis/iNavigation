//
//  CustomTabBar.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/5/24.
//

import SwiftUI

enum Tab {
    case home
    case search
    case notifications
    case profile
    
    var title: String {
        return switch self {
        case .home: "Home"
        case .search: "Search"
        case .notifications: "Notification"
        case .profile: "Profile"
        }
    }
}

struct CustomTabBar: View {
    private var selectedTab: Tab
    
    init(selectedTab: Tab) {
        self.selectedTab = selectedTab
    }
    
    private var activeColor: Color {
        return Color.brown
    }
    
    private var inactiveColor: Color {
        return Color.gray
    }
    
    var body: some View {
        HStack {
            tabBarItem(tab: .home, imageName: "house.fill", title: "Home")
            Spacer()
            tabBarItem(tab: .search, imageName: "magnifyingglass", title: "Search")
            Spacer()
            tabBarItem(tab: .notifications, imageName: "bell.fill", title: "Notifications")
            Spacer()
            tabBarItem(tab: .profile, imageName: "person.fill", title: "Profile")
        }
        .padding(.horizontal)
        .background(Color.brown.opacity(0.1))
    }
    
    private func tabBarItem(tab: Tab, imageName: String, title: String) -> some View {
        Button(action: {
            // selectedTab = tab
        }) {
            VStack {
                Image(systemName: imageName)
                    .font(.system(size: 20))
                    .foregroundStyle(selectedTab == tab ? activeColor : inactiveColor)
                Text(title)
                    .font(.caption)
                    .foregroundStyle(selectedTab == tab ? activeColor : inactiveColor)
            }
            .padding(.vertical, 10)
        }
    }
}

#Preview {
    Group {
        CustomTabBar(selectedTab: .home)
        CustomTabBar(selectedTab: .search)
        CustomTabBar(selectedTab: .notifications)
        CustomTabBar(selectedTab: .profile)
    }
}
