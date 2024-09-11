//
//  RouterView.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import SwiftUI

// Main view using RouterView
struct RouterView: View {
    @StateObject var router: Router = Router()

    var body: some View {
        Group {
            switch router.currentRoute {
            case .BottomNavigation(let selectedTab):
                BottomSectionContent(selectedTab: selectedTab)
                    .transition(.move(edge: .leading))
            case .NonBottomNavigation(let selectedTab):
                NonBottomSectionContent(selectedTab: selectedTab)
                    .transition(.move(edge: .trailing))
            }
        }
        .environmentObject(router)
    }
}
