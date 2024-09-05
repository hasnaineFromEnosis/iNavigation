//
//  SectionScreen.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/5/24.
//

import SwiftUI

struct SectionSecreen: View {
    @Binding var selectedTab: Tab
    var body: some View {
        VStack(spacing: 44) {
            TitleView(selectedTab: $selectedTab)
            NonBottomButtons(selectedTab: $selectedTab)
        }
    }
}

#Preview {
    SectionSecreen(selectedTab: .constant(.home))
}

#Preview {
    SectionSecreen(selectedTab: .constant(.search))
}

#Preview {
    SectionSecreen(selectedTab: .constant(.notifications))
}

#Preview {
    SectionSecreen(selectedTab: .constant(.profile))
}
