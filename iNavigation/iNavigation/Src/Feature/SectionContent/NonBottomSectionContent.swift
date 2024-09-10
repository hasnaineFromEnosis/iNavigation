//
//  NonBottomSectionContent.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import SwiftUI

struct NonBottomSectionContent: View {
    @EnvironmentObject var router: Router
    
    private var selectedTab: NonBottomTab
    
    init(selectedTab: NonBottomTab) {
        self.selectedTab = selectedTab
    }
    
    var body: some View {
        VStack {
            CustomTopBar(onGoBackPressed: {
                self.router.navigateBack()
            })
            Spacer()
            SectionSecreen(titleText: selectedTab.title, showBottomNavButton: false)
                .environmentObject(router)
            Spacer()
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    NonBottomSectionContent(selectedTab: .pageA)
        .environmentObject(Router())
}
