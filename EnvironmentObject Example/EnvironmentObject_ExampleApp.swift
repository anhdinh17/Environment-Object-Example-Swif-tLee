//
//  EnvironmentObject_ExampleApp.swift
//  EnvironmentObject Example
//
//  Created by Anh Dinh on 4/22/24.
//

import SwiftUI

final class Theme: ObservableObject {
    @Published var primaryColor: Color = .orange
}

@main
struct EnvironmentObject_ExampleApp: App {
    // Create object to inject
    @StateObject var currentTheme = Theme()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(currentTheme)
        }
    }
}
