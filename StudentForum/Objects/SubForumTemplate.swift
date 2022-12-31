//
//  SubForumTemplate.swift
//  StudentForum
//
//  Created by chariton sapkas on 14/02/2022.
//

import SwiftUI

struct SubForumTemplate: View {
    var body: some View {
        // Displaying a Subforum template
        VStack(alignment: .leading, spacing: 8){
           
                
            HStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .padding(.horizontal)
                    
                Text("UserName")
                    .font(.headline).bold()
                                
                Text("Course Name")
                    .foregroundColor(.gray)
                    .font(.body)
                    
                Text("Time")
                    .foregroundColor(.gray)
                    .font(.body)
            }
            Text("Tittle of Subforum")
                .font(.title3).bold()
                .padding(.horizontal)
               
            Text("SubForum-Body/Text")
                .foregroundColor(.black)
                .scenePadding()
                .multilineTextAlignment(.leading)

            buttons
            
            Divider()
        }
    }
}

struct SubForumTemplate_Previews: PreviewProvider {
    static var previews: some View {
        SubForumTemplate()
    }
}

extension SubForumTemplate{
    var buttons: some View {
        
        HStack(spacing:8){
            Button{
                //Action
                
            } label: {
                HStack(){
                    Image(systemName: "hand.thumbsup")
                        .font(.body)
                        
                    Text("Like")
                        .font(.body)
                    
                }
                .padding()
            }
            
            Spacer()
            
            Button{
                //Action
            } label: {
                HStack{
                    Image(systemName: "text.bubble")
                        .font(.body)
                        
                    Text("Comment")
                        .font(.body)
                    
                }
                .padding()
                
            }
            
            Spacer()
            
            Button{
                //Action
            } label: {
                HStack(){
                    Image(systemName: "exclamationmark.shield")
                        .font(.body)
                        
                    Text("Report")
                        .font(.body)
                }
                .padding(.trailing)
            }
        }
    }
}
