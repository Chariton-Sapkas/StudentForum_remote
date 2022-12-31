//
//  postVC.swift
//  StudentForum
//
//  Created by chariton sapkas on 07/03/2022.
//

import SwiftUI

struct postVC: View {
    @State private var UserInputText: String = ""
    @State private var SubforumTitle: String = ""
    @Environment(\.presentationMode) var currentView

    var body: some View {
        VStack{
            HStack{
                Button{
                    //Action calncel
                    currentView.wrappedValue.dismiss()
                }label: {
                    Text("Cancel")
                        .font(.title2)
                        .foregroundColor(.red)
                        .padding(.horizontal)
                }
                Spacer()
                
                Button{
                    
                }label: {
                    Text("Post")
                        .font(.title2)
                        .foregroundColor(.blue)
                        .padding(.trailing,15)
                }
            }
            HStack{
                Text("Post's title")
                    .font(.title2).bold()
                    .foregroundColor(.black) 
                    .padding()
                TextField("Enter a title...", text: $SubforumTitle, onEditingChanged: { (changed) in
                              print("Username onEditingChanged - \(changed)")
                })
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            
            textSubforum("What's in your mind?", myText:$UserInputText )
           
            Spacer()
        }
    }
}

struct postVC_Previews: PreviewProvider {
    static var previews: some View {
        postVC()
    }
}
