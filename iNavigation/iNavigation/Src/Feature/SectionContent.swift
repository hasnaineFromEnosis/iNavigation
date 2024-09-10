//
//  SectionContent.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import SwiftUI

struct SectionContent: View {
    @EnvironmentObject var router: Router
    
    private var selectedTab: Tab
    
    init(selectedTab: Tab) {
        self.selectedTab = selectedTab
    }
    
    var body: some View {
        VStack {
            CustomTopBar(onGoBackPressed: {
                self.router.navigateBack()
            })
            Spacer()
            SectionSecreen(selectedTab: selectedTab)
                .environmentObject(router)
            Spacer()
            CustomTabBar(selectedTab: selectedTab)
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    SectionContent(selectedTab: .notifications)
        .environmentObject(Router())
}

