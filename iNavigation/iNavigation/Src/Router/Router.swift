//
//  Router.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import SwiftUI

class Router: ObservableObject {
    // Used to programatically control our navigation stack
    @Published var path: NavigationPath = NavigationPath()
    
    // Builds the views
    @ViewBuilder func view(for route: Route) -> some View {
        switch route {
        case .BottomNavigation(selectedTab: let selectedTab):
            BottomSectionContent(selectedTab: selectedTab)
        case .NonBottomNavigation(selectedTab: let selectedTab):
            NonBottomSectionContent(selectedTab: selectedTab)
        }
    }
    
    // Used by views to navigate to another view
    func navigateTo(_ appRoute: Route) {
        if isBottomNavigation(appRoute) {
            popToRoot()
        }
        
        if appRoute != .BottomNavigation(selectedTab: .home) {
            path.append(appRoute)
        }
    }
    
    // Used to go back to the previous screen
    func navigateBack() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    // Pop to the root screen in our hierarchy
    private func popToRoot() {
        path.removeLast(path.count)
    }
    
    private func isBottomNavigation(_ appRoute: Route) -> Bool {
        for tabValue in Tab.allCases {
            if appRoute == .BottomNavigation(selectedTab: tabValue) {
                return true
            }
        }
        
        return false
    }
}
