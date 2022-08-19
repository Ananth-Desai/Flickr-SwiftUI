//
//  Homescreen.swift
//  Flickr
//
//  Created by Ananth Desai on 18/08/22.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [
            .foregroundColor : UIColor(named: "Pink Primary") as Any,
            .font : UIFont(name: "Pacifico-Regular", size: 20) as Any
        ]
        appearance.backgroundColor = UIColor(named: "Navbar Background")
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        let tabAppearance = UITabBarAppearance()
        let itemAppearance = UITabBarItemAppearance()
        itemAppearance.selected.iconColor = UIColor(named: "Pink Primary")
        itemAppearance.selected.titleTextAttributes = [
            .foregroundColor : UIColor(named: "Pink Primary") as Any
        ]
        tabAppearance.backgroundColor = UIColor(named: "Tab Bar Background")
        tabAppearance.selectionIndicatorTintColor = UIColor(named: "Pink Primary")
        tabAppearance.stackedLayoutAppearance = itemAppearance
        tabAppearance.compactInlineLayoutAppearance = itemAppearance
        tabAppearance.inlineLayoutAppearance = itemAppearance
        UITabBar.appearance().standardAppearance = tabAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabAppearance
    }
    
    var body: some View {
        NavigationView {
            ZStack() {
                TabView {
                    SearchScreen()
                        .tabItem {
                            Image("Search Icon")
                            Text("Search")
                        }
                        .tag(1)
                    FavoritesScreen()
                        .tabItem {
                            Image("Heart Icon")
                            Text("Favorites")
                        }
                        .tag(2)
                }
            }
            .navigationTitle("Flickr")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
