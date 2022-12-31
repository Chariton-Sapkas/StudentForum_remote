//
//  SearchVC.swift
//  StudentForum
//
//  Created by chariton sapkas on 03/03/2022.
//

import SwiftUI

struct SearchVC: View {
    var body: some View {
        NavigationView{
            VStack{
                TextField("Search",text: .constant("")){
                }
                ScrollView{
                    LazyVStack{
                        ForEach(0...15, id: \.self){ _ in
                            NavigationLink{
                                GroupVC()
                            } label: {
                                groupTemplate()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchVC_Previews: PreviewProvider {
    static var previews: some View {
        SearchVC()
    }
}
