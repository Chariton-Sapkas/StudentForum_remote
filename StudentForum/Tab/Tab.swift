//
//
//  StudentForum
//
//  Created by chariton sapkas on 03/03/2022.
//

import SwiftUI

struct Tab: View {
    @State private var currentSelection = 0
    
    var body: some View {
        TabView(selection: $currentSelection ) {
            HomeVC()
                .onTapGesture{
                    self.currentSelection = 0
                }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }.tag(0)
            
           SearchVC()
                .onTapGesture{
                    self.currentSelection = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("search")
                }.tag(1)
            ProfileVC()
                .onTapGesture{
                    self.currentSelection = 2
                }
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }.tag(2)
            GiftsVC()
                .onTapGesture{
                    self.currentSelection = 3
                }
                .tabItem {
                    Image(systemName: "gift.fill")
                    Text("Rewards")
                }.tag(3)
        }
        .font(.headline)
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
.previewInterfaceOrientation(.portrait)
    }
}
