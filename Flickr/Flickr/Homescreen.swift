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
            .foregroundColor : UIColor(named: GlobalConstants.shared.pinkPrimary) as Any,
            .font : UIFont(name: GlobalConstants.shared.navbarFont, size: 20) as Any
        ]
        appearance.backgroundColor = UIColor(named: GlobalConstants.shared.navbarbackground)
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        let tabAppearance = UITabBarAppearance()
        let itemAppearance = UITabBarItemAppearance()
        itemAppearance.selected.iconColor = UIColor(named: GlobalConstants.shared.pinkPrimary)
        itemAppearance.selected.titleTextAttributes = [
            .foregroundColor : UIColor(named: GlobalConstants.shared.pinkPrimary) as Any
        ]
        tabAppearance.backgroundColor = UIColor(named: GlobalConstants.shared.tabbarBackground)
        tabAppearance.selectionIndicatorTintColor = UIColor(named: GlobalConstants.shared.pinkPrimary)
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
                            Image(GlobalConstants.shared.searchIcon)
                            Text(GlobalConstants.shared.tabBarSearch)
                        }
                        .tag(1)
                    FavoritesScreen()
                        .tabItem {
                            Image(GlobalConstants.shared.heartIcon)
                            Text(GlobalConstants.shared.tabBarFavorites)
                        }
                        .tag(2)
                }
            }
            .navigationTitle(GlobalConstants.shared.navbarTitle)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
