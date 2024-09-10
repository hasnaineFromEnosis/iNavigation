//
//  ContentView.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/5/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        SectionContent(selectedTab: $selectedTab)
    }
}

#Preview {
    ContentView()
}
