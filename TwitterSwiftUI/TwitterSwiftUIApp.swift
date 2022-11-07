//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by Jose Castillo on 11/4/22.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                ContentView()
                LoginView()
            }
        }
    }
}
