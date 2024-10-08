//
//  ContentView.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/5/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        RouterView {
            BottomSectionContent(selectedTab: .home)
        }
    }
}

#Preview {
    ContentView()
}
