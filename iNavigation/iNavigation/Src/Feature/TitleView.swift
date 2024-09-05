//
//  TitleView.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/5/24.
//

import SwiftUI

struct TitleView: View {
    @Binding var selectedTab: Tab
    
    var body: some View {
        VStack(spacing: 4) {
            Text("Welcome to")
                .font(.title3)
                .foregroundColor(.brown.opacity(0.7))
            
            Text(selectedTab.title + " View")
                .font(.largeTitle.bold())
                .foregroundColor(.brown)
                .shadow(color: .gray.opacity(0.5), radius: 2, x: 0, y: 2)
            
            Capsule()
                .fill(Color.brown)
                .frame(width: 200, height: 4)
                .padding(.top, 4)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.brown.opacity(0.08))
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
                .frame(width: 300)
        )
        .padding(.horizontal)
    }
}

#Preview {
    Group {
        TitleView(selectedTab: .constant(.home))
        TitleView(selectedTab: .constant(.profile))
        TitleView(selectedTab: .constant(.notifications))
        TitleView(selectedTab: .constant(.search))
    }
}
