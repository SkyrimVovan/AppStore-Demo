//
//  TabBarView.swift
//  AppStore-Demo
//
//  Created by Uladzimir on 30.01.2024.
//

import SwiftUI

struct TabBarView: View {
    private enum Identifier: Int {
        case today, games, apps, arcade, search
    }

    @State private var selectedTab: Identifier = .today

    var body: some View {
        TabView(selection: $selectedTab) {
            TodayView()
                .tabItem {
                    Label("Today", systemImage: "doc.text.image")
                }
                .tag(Identifier.today)

            Text("Games")
                .tabItem {
                    Label("Games", systemImage: "gamecontroller.fill")
                }
                .tag(Identifier.games)

            AppsView()
                .tabItem {
                    Label("Apps", systemImage: "square.3.layers.3d")
                }
                .tag(Identifier.apps)

            Text("Arcade")
                .tabItem {
                    Label("Arcade", systemImage: "arcade.stick")
                }
                .tag(Identifier.arcade)

            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(Identifier.search)


        }
        .symbolRenderingMode(.monochrome)
        .tint(.blue)
    }
}

#Preview {
    TabBarView()
}
