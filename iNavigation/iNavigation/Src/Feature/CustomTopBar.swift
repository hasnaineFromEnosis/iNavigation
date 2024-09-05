//
//  CustomTopBar.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/5/24.
//

import SwiftUI

struct CustomTopBar: View {
    var body: some View {
        HStack {
            Button(action: {
                // Action for the back button
                // For example, dismiss the current view
                // presentationMode.wrappedValue.dismiss()
            }) {
                HStack(spacing: 10) {
                    Image(systemName: "arrow.left")
                        .font(.system(size: 20, weight: .medium))
                    Text("Go Back")
                        .font(.system(size: 18, weight: .regular))
                }
                .foregroundColor(.brown)
            }
            Spacer()
        }
        .padding()
        .background(Color.brown.opacity(0.1))
    }
}

#Preview {
    CustomTopBar()
}
