//
//  HomeVC.swift
//  StudentForum
//
//  Created by chariton sapkas on 03/03/2022.
//

import SwiftUI

struct HomeVC: View {
    @State private var isClicked = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView {
                LazyVStack {
                    ForEach(0...20,id: \.self) { _ in
                       SubForumTemplate()
                    }
                }
            }
            Button{
                print("New subforum")
                isClicked.toggle()
                
            } label: {
                Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    .font(.title)
                    .frame(width: 50, height: 80)
                    .padding()
            }
            .background(Color(.systemRed))
            .clipShape(Circle())
            .foregroundColor(.white)
            .padding(.trailing)
            .fullScreenCover(isPresented: $isClicked){
                postVC()
            }
                
            
            
        }
    }
}

struct HomeVC_Previews: PreviewProvider {
    static var previews: some View {
        HomeVC()
    }
}
