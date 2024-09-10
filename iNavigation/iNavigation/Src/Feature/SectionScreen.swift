//
//  SectionScreen.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/5/24.
//

import SwiftUI

struct SectionSecreen: View {
    @EnvironmentObject var router: Router

    private var titleText: String
    private var showBottomNavButton: Bool
    
    init(titleText: String, showBottomNavButton: Bool = true) {
        self.titleText = titleText
        self.showBottomNavButton = showBottomNavButton
    }
    
    var body: some View {
        VStack(spacing: 44) {
            TitleView(titleText: titleText)
            NonBottomButtons(showBottomNavButton: showBottomNavButton)
                .environmentObject(router)
        }
    }
}

#Preview {
    SectionSecreen(titleText: Tab.home.title)
        .environmentObject(Router())
}

#Preview {
    SectionSecreen(titleText: Tab.search.title)
        .environmentObject(Router())
}

#Preview {
    SectionSecreen(titleText: Tab.notifications.title)
        .environmentObject(Router())
}

#Preview {
    SectionSecreen(titleText: Tab.profile.title)
        .environmentObject(Router())
}
