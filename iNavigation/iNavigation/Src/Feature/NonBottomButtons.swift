//
//  NonBottomButtons.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/5/24.
//

import SwiftUI

struct NonBottomButtons: View {
    @EnvironmentObject var router: Router
    
    private var selectedTab: Tab
    
    init(selectedTab: Tab) {
        self.selectedTab = selectedTab
    }
    
    var body: some View {
        VStack(spacing: 30) {
            VStack(spacing: 10) {
                NonBottomSingleButton(text: "Yo") {
                    
                }
                NonBottomSingleButton(text: "Yo") {
                    
                }
                NonBottomSingleButton(text: "Yo") {
                    
                }
                NonBottomSingleButton(text: "Yo") {
                    
                }
            }
            
            VStack(spacing: 10) {
                NonBottomSingleButton(text: Tab.home.title) {
                    self.router.navigateTo(Route.BottomNavigation(selectedTab: Tab.home))
                }
                NonBottomSingleButton(text: Tab.search.title) {
                    self.router.navigateTo(Route.BottomNavigation(selectedTab: Tab.search))
                }
                NonBottomSingleButton(text: Tab.notifications.title) {
                    self.router.navigateTo(Route.BottomNavigation(selectedTab: Tab.notifications))
                }
                NonBottomSingleButton(text: Tab.profile.title) {
                    self.router.navigateTo(Route.BottomNavigation(selectedTab: Tab.profile))
                }
            }
        }
    }
}

struct NonBottomSingleButton: View {
    var text: String
    var onClick: () -> Void
    
    var body: some View {
        Button(action: {
            onClick()
        }) {
            NonBottomSingleButtonView(text: text)
        }
        .padding(.horizontal)
    }
}

struct NonBottomSingleButtonView: View {
    var text: String
    
    var body: some View {
        Text("\(text)")
            .font(.headline)
            .frame(width: 300, height: 40)
            .background(Color.brown.opacity(0.7))
            .foregroundColor(.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
    }
}

#Preview {
    NonBottomButtons(selectedTab: .home)
}
