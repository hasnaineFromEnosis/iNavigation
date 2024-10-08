//
//  RouterView.swift
//  iNavigation
//
//  Created by Shahwat Hasnaine on 9/10/24.
//

import SwiftUI

// View containing the necessary SwiftUI
// code to utilize a NavigationStack for
// navigation accross our views.
struct RouterView<Content: View>: View {
    @StateObject var router: Router = Router()
    // Our root view content
    private let content: Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationStack(path: $router.path) {
            content
                .navigationDestination(for: Route.self) { route in
                    router.view(for: route)
                }
        }
        .environmentObject(router)
    }
}
