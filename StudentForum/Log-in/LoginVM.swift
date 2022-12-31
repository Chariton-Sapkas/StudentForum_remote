//
//  LoginVM.swift
//  StudentForum
//
//  Created by chariton sapkas on 08/02/2022.
//

import SwiftUI
import Firebase

class LoginVM: ObservableObject{
    
    @Published var Email: String = ""
    @Published var password: String = ""
    @Published var falseInfo: Int = 0
    @Published var ConfirmLoged: FirebaseAuth.User?
    
    init(){
        self.ConfirmLoged = Auth.auth().currentUser
    }
    
    
    func  AuthenticateLogin(){
        
    }
    
}
