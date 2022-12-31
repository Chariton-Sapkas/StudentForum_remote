//
//  groupTemplate.swift
//  StudentForum
//
//  Created by chariton sapkas on 07/03/2022.
//

import SwiftUI

struct groupTemplate: View {
    var body: some View {
        VStack{
            HStack(spacing:20){
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.black)
                VStack(alignment:.center, spacing: 4){
                    Text("Name of group")
                        .font(.title3).bold()
                        .foregroundColor(.black)
                    Text("Private/Public")
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(.horizontal)
            
            Divider()
        }
    }
}

struct groupTemplate_Previews: PreviewProvider {
    static var previews: some View {
        groupTemplate()
    }
}
