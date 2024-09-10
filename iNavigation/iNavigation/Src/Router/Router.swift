//
//  Router.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import SwiftUI

// Contains the possible destinations in our Router
enum Route: Hashable {
    case BottomNavigation(selectedTab: Tab)
}

class Router: ObservableObject {
    // Used to programatically control our navigation stack
    @Published var path: NavigationPath = NavigationPath()
    
    // Builds the views
    @ViewBuilder func view(for route: Route) -> some View {
        switch route {
        case .BottomNavigation(selectedTab: let selectedTab):
            SectionContent(selectedTab: selectedTab)
        }
    }
    
    // Used by views to navigate to another view
    func navigateTo(_ appRoute: Route) {
        path.append(appRoute)
    }
    
    // Used to go back to the previous screen
    func navigateBack() {
        path.removeLast()
    }
    
    // Pop to the root screen in our hierarchy
    func popToRoot() {
        path.removeLast(path.count)
    }
}
