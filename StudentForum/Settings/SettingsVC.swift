//
//  SettingsVC.swift
//  StudentForum
//
//  Created by chariton sapkas on 07/03/2022.
//

import SwiftUI

struct SettingsVC: View {
    var body: some View {
        Button{
           //Action
            
        }
        label:{
            Text("Log out")
                .font(.headline).bold()
                .frame(width: 110, height: 36)
                .foregroundColor(.red)
                .overlay(RoundedRectangle(cornerRadius:  17).stroke(Color.black,lineWidth: 0.75))
                .padding(.trailing)
        }
    }
}

struct SettingsVC_Previews: PreviewProvider {
    static var previews: some View {
        SettingsVC()
    }
}
