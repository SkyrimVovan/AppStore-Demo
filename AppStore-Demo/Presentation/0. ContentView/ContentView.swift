//
//  ContentView.swift
//  AppStore-Demo
//
//  Created by Uladzimir on 30.01.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Binding var needsOnboarding: Bool

    var body: some View {
        TabBarView()
            .sheet(isPresented: $needsOnboarding) {
                OnboardingView()
            }
    }
}

#Preview("onboarding") {
    ContentView(needsOnboarding: .constant(true))
}

#Preview("main") {
    ContentView(needsOnboarding: .constant(false))
}
