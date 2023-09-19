//
//  lesson_403App.swift
//  lesson 403
//
//  Created by Garib Agaev on 18.09.2023.
//

import SwiftUI

@main
struct lesson_403App: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
