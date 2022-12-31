//
//  GroupVC.swift
//  StudentForum
//
//  Created by chariton sapkas on 07/03/2022.
//

import SwiftUI

struct GroupVC: View {
    @State private var currentSelection: GroupButtons = .posts
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            
            Headliner
            
            //Join group button
            Button{
                //Action
            }
            label:{
                Text("Join Group")
                    .font(.headline).bold()
                    .frame(width: 110, height: 36)
                    .foregroundColor(.blue)
                    .overlay(RoundedRectangle(cornerRadius:  17).stroke(Color.blue,lineWidth: 0.75))
                    .padding(.horizontal)
                    Spacer()
            }
            // description
            Text("Description goes here. This is an example of a short text for a particular group ")
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding()
           
            
            ButtonActionView
            
            ScrollView{
                LazyVStack{
                    ForEach(0...7, id: \.self) { _ in
                        
                        SubForumTemplate()
                    }
                }
            }
            
            Spacer()
        }
    }
}

struct GroupVC_Previews: PreviewProvider {
    static var previews: some View {
        GroupVC()
    }
}

extension GroupVC{
    var Headliner: some View{
        HStack{
            Circle()
                .frame(width: 55, height: 55)
           
            VStack{
                Text("Group name")
                    .font(.title2)
                    .foregroundColor(.black).bold()
                Text("Type of group")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
    var ButtonActionView:some View{
        HStack {
            ForEach(GroupButtons.allCases,id: \.rawValue){ selection in
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
    
}
