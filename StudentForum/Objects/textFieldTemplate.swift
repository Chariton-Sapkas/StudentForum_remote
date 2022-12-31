//
//  textTemplate.swift
//  StudentForum
//
//  Created by chariton sapkas on 09/02/2022.
//

import SwiftUI

struct textFieldTemplate: View {
    @Binding var text: String
    let placeholder: String
    let Symbol: String?
    
    
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: Symbol ?? "")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.black))
                
                TextField(placeholder,text:$text)
                    .foregroundColor(.black)
            }
            Divider()
                .foregroundColor(Color(.darkGray))
        }
        .padding()
    }
}
 
struct textFieldTemplate_Previews: PreviewProvider {
    static var previews: some View {
        textFieldTemplate(text: .constant(""),placeholder: "UserName",Symbol: "person")
            .padding()
    }
}
