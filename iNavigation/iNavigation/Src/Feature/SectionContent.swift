//
//  SectionContent.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import SwiftUI

struct SectionContent: View {
    @Binding var selectedTab: Tab
    
    var body: some View {
        VStack {
            CustomTopBar()
            Spacer()
            SectionSecreen(selectedTab: $selectedTab)
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
        }
    }
}

#Preview {
    SectionContent(selectedTab: .constant(.notifications))
}

