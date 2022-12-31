//
//  ProfileVC.swift
//  StudentForum
//
//  Created by chariton sapkas on 03/03/2022.
//

import SwiftUI

struct ProfileVC: View {
    
    @State private var currentSelection: ActionButtons = .myPosts
    
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0){
            
            header
            
            EditProfileButton
            
            userInfoView
           
            ButtonActionView
            
            ScrollView{
                LazyVStack{
                    ForEach(0...7,id: \.self) { _ in
                        SubForumTemplate()
                    }
                }
            }    
            
            Spacer()
        }
    }
}

struct ProfileVC_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVC()
.previewInterfaceOrientation(.portrait)
    }
}

extension ProfileVC{
    
    var EditProfileButton: some View{
        HStack(){
            HStack(){
                Text("User Name")
                    .font(.title).bold()
                    .padding()
            }

            Spacer()
            
            Button{
               //Action
            }
            label:{
                Text("Edit profile")
                    .font(.headline).bold()
                    .frame(width: 110, height: 36)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius:  17).stroke(Color.black,lineWidth: 0.75))
                    .padding(.trailing)
            }
        }
        .offset(y:20)
    }
    var userInfoView: some View{
        VStack(alignment: .leading,spacing: 0){
            
            HStack{
                Text("Score: XXXX")
                    .font(.title3)
                    .padding()
                Spacer()
                
                Button{
                    //Action
                }
                label:{
                    HStack{
                        Text("Settings")
                            .font(.body)
                            .foregroundColor(.black).bold()
                            .frame(width: 110, height: 36)
                            .overlay(RoundedRectangle(cornerRadius:  17).stroke(Color.black,lineWidth: 0.75))
                            .scenePadding()
    
                    }
                    
                   
                }
            }
            
            HStack{
                Text("Description of user's profile that consists a few lines of text.This is just a sample.")
                    .padding()
            }
        }
    }
    var ButtonActionView:some View{
        HStack {
            ForEach(ActionButtons.allCases,id: \.rawValue){ selection in
                VStack{
                    Text(selection.caseName)
                        .padding()
                        .font(.subheadline.bold())
                        .foregroundColor(currentSelection == selection ?  .black :.gray)
                    if currentSelection == selection {
                        Capsule()
                            .frame(height:2)
                    }
                    else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture(){
                    self.currentSelection = selection
                }
                
            }
        }
    }
    var header: some View{
        ZStack(alignment: .bottomTrailing){
            Color(.systemYellow)
                .ignoresSafeArea()
            VStack{
                Circle()
                    .offset(y:15)
            }
        }
        .frame(height: 96)
    }
}
