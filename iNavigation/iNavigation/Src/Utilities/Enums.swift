//
//  Enums.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import Foundation

enum Tab: CaseIterable, Hashable {
    case home
    case search
    case notifications
    case profile
    
    static var allCases: [Tab] = [.home, .search, .notifications, .profile]
    
    var title: String {
        return switch self {
        case .home: "Home"
        case .search: "Search"
        case .notifications: "Notification"
        case .profile: "Profile"
        }
    }
}

enum NonBottomTab: CaseIterable, Hashable {
    case pageA
    case pageB
    case pageC
    case pageD
    
    static var allCases: [NonBottomTab] = [.pageA, .pageB, .pageC, .pageD]
    
    var title: String {
        return switch self {
        case .pageA: "Page A"
        case .pageB: "Page B"
        case .pageC: "Page C"
        case .pageD: "Page D"
        }
    }
}

// Contains the possible destinations in our Router
enum Route: Hashable {
    case NonBottomNavigation(selectedTab: NonBottomTab)
    case BottomNavigation(selectedTab: Tab)
}
