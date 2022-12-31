//
//  LoginVC.swift
//  StudentForum
//
//  Created by chariton sapkas on 06/02/2022.
//

import SwiftUI
import UIKit
import Firebase

struct LoginVC: View {
    //declaring an object from the loginVM class
    @StateObject var loginObj:LoginVM = LoginVM()
   
    
    var body: some View {
        NavigationView{
            VStack{
                
                Text("Welcome back!")
                    .font(.largeTitle.bold())
                    .padding(.bottom,40)
    
                    
                textFieldTemplate( text: $loginObj.Email, placeholder: "Dummy@example.com", Symbol: "envelope")
                    .padding(.horizontal)
                
                textFieldTemplate(text: $loginObj.password , placeholder: "Password", Symbol: "lock")
                    //TextField Password attributes
                    .padding(.horizontal)
                    
                 
                HStack{
                    Spacer()
                    Button(){
                        //function for authentication
                        
                    }
                    label:{
                      Text("Forgot Password? Reset here.")
                        //Atribbutes for Button Login
                            .padding(.bottom,20)
                            .padding(.top,30)
                            .padding(.horizontal)
                    }
                }
                
            

                Button(){
                    //function for authentication
                    
                }
                label:{
                  Text("Login")
                    //Atribbutes for Button Login
                    .foregroundColor(.white)
                    .frame(width: 250, height: 45)
                    .background(Color.black)
                    .cornerRadius(11)
                    .padding(.top,20)
                }
         
                Spacer()
                
                NavigationLink{
                    SignUpVC()
                        . navigationBarHidden(true)
                }label:{
                  Text("Not a member? Sing Up here")
                    .foregroundColor(.blue)
                    .padding()
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginVC_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LoginVC()
        }
.previewInterfaceOrientation(.portrait)
    }
}
