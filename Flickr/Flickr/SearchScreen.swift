//
//  SearchScreen.swift
//  Flickr
//
//  Created by Ananth Desai on 19/08/22.
//

import Foundation
import SwiftUI

struct SearchScreen: View {
    
    @State var searchString: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(GlobalConstants.shared.searchIcon)
                    .resizable()
                    .frame(width: 15.63, height: 15.78)
                    .foregroundColor(Color(GlobalConstants.shared.searchIconColor))
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                
                TextField(GlobalConstants.shared.searchBarPlaceholder, text: $searchString)
                    .tint(Color(GlobalConstants.shared.pinkPrimary))
                    .frame(height: 36)
            }
            .background(Color(GlobalConstants.shared.searchBarBackground))
            .cornerRadius(10)
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 23, trailing: 30))
            
            Button {
                // TODO: Add search bar action
            } label: {
                Text(GlobalConstants.shared.searchButtonTitle)
                    .foregroundColor(Color.white)
                    .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
            }
            .background(searchString.isEmpty ? Color(GlobalConstants.shared.searchButtonDisabled) : Color(GlobalConstants.shared.searchButtonEnabled))
            .cornerRadius(12)
            .disabled(searchString.isEmpty)
        }
    }
    
}
