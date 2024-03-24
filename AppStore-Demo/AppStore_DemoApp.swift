//
//  AppStore_DemoApp.swift
//  AppStore-Demo
//
//  Created by Uladzimir on 30.01.2024.
//

import SwiftUI
import SwiftData

@main
struct AppStore_DemoApp: App {
    @AppStorage(Key.needsOnboarding) private var needsOnboarding = UserSettings.needsOnboarding

    var body: some Scene {
        WindowGroup {
            ContentView(needsOnboarding: $needsOnboarding)
        }
    }
}
