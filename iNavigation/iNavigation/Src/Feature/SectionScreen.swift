//
//  SectionScreen.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/5/24.
//

import SwiftUI

struct SectionSecreen: View {
    @EnvironmentObject var router: Router
    
    private var selectedTab: Tab
    
    init(selectedTab: Tab) {
        self.selectedTab = selectedTab
    }
    
    var body: some View {
        VStack(spacing: 44) {
            TitleView(selectedTab: selectedTab)
            NonBottomButtons(selectedTab: selectedTab)
                .environmentObject(router)
        }
    }
}

#Preview {
    SectionSecreen(selectedTab: .home)
        .environmentObject(Router())
}

#Preview {
    SectionSecreen(selectedTab: .search)
        .environmentObject(Router())
}

#Preview {
    SectionSecreen(selectedTab: .notifications)
        .environmentObject(Router())
}

#Preview {
    SectionSecreen(selectedTab: .profile)
        .environmentObject(Router())
}
