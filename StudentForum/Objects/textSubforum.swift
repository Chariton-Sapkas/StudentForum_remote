//
//  SubForumTextVC.swift
//  StudentForum
//
//  Created by chariton sapkas on 07/03/2022.
//

import SwiftUI

struct textSubforum: View {
    @Binding var myText: String
    let placeholder:String
    
    init(_ placeholder: String, myText: Binding<String>) {
        self.placeholder = placeholder
        self._myText = myText
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack(alignment: .topLeading){
            if myText.isEmpty{
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal,8)
                    .padding(.vertical,12)
            }
            TextEditor(text: $myText)
                .padding(4)
        }
        .font(.body)
    }
}

