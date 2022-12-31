//
//  SingUpMV.swift
//  StudentForum
//
//  Created by chariton sapkas on 08/02/2022.
//

import SwiftUI
import Firebase

class SignUpModel: ObservableObject{
    
    
    @Published var Username: String = ""
    @Published var password: String = ""
    @Published var ConfirmPass: String = ""
    @Published var Email: String = ""
    @Published var course: String = ""
    @Published var falsePass: Int = 0
    @Published var falseEmail: Int = 0
   
    
    func  SignUpConfirmation(){
        
    }
    
}
