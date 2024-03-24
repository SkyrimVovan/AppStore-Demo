//
//  OnboardingView.swift
//  AppStore-Demo
//
//  Created by Uladzimir on 30.01.2024.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            logo
                .listRowSeparator(.hidden)
                .padding(.top, 40)

            title
                .padding(.top, 16)

            subtitle
                .padding(.horizontal, 40)
                .padding(.top, 2)

        }
        .listStyle(.plain)
        .interactiveDismissDisabled()
        .scrollBounceBehavior(.basedOnSize)
    }

    var logo: some View {
        HStack {
            Spacer()
            Image(.appStore)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 80)
            Spacer()
        }
    }

    var title: some View {
        Text("Welcome to the App Store")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .multilineTextAlignment(.center)
    }

    var subtitle: some View {
        Text("A safe and trusted place to discover amazing apps and games, explore timely in-app events, and browse daily stories and recommendations by our editors.")
            .font(.callout)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    OnboardingView()
}
