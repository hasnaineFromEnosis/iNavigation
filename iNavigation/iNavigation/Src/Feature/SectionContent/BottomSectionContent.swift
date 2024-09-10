//
//  BottomSectionContent.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import SwiftUI

struct BottomSectionContent: View {
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
            SectionSecreen(titleText: selectedTab.title)
                .environmentObject(router)
            Spacer()
            CustomTabBar(selectedTab: selectedTab)
                .environmentObject(router)
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    BottomSectionContent(selectedTab: .notifications)
        .environmentObject(Router())
}

