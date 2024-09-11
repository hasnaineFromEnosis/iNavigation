//
//  Router.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import SwiftUI

class Router: ObservableObject {
    @Published private(set) var path: [Route] = [.BottomNavigation(selectedTab: .home)]

    var currentRoute: Route {
        path.last ?? .BottomNavigation(selectedTab: .home)
    }

    // Push a new route onto the stack
    func navigateTo(_ route: Route) {
        if isBottomNavigation(route) {
            popToRoot()
        }
        withAnimation(.easeInOut) {
            if path.isEmpty || path.last != route {
                path.append(route)
            }
        }
    }

    // Pop the last route off the stack
    func navigateBack() {
        withAnimation(.easeInOut) {
            if path.count > 1 {
                path.removeLast()
            }
        }
    }

    // Pop to the root route (home)
    private func popToRoot() {
        withAnimation(.easeInOut) {
            path = [.BottomNavigation(selectedTab: .home)]
        }
    }

    private func isBottomNavigation(_ route: Route) -> Bool {
        Tab.allCases.contains { tab in
            route == .BottomNavigation(selectedTab: tab)
        }
    }
}
