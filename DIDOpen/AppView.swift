//
//  ContentView.swift
//  DreamMortgageApp
//
//  Created by VincentMing on 2022/12/9.
//

import SwiftUI

struct AppView: View {
    
    @State private var tabIndex: Int = 4

    
    var body: some View {
        
        TabView(selection: $tabIndex) {
            AppHubView()
                .tabItem {
                    Label("AppHub", systemImage: "atom")
                }
                .tag(1)
            NFTView()
                .tabItem {
                    Label("NFT", systemImage: "bitcoinsign.circle")
                }
                .tag(2)
            SettingView()
                .tabItem {
                    Label("Setting", systemImage: "gear")
                }
                .tag(3)
            MeView()
                .tabItem {
                    Label("Me", systemImage: "person")
                }
                .tag(4)
        }
    }
}

