//
//  SignUpVC.swift
//  StudentForum
//
//  Created by chariton sapkas on 06/02/2022.
//

import SwiftUI
import UIKit

struct SignUpVC: View {
    @StateObject var SignUpObj:SignUpModel = SignUpModel()
    @Environment(\.presentationMode) var currView
    var body: some View {
        VStack(spacing: 20){
            HStack{
                Text("Want to join us?")
                    .font(.largeTitle.bold())
                    .padding(.horizontal)
            
                Spacer()

            }
            
            HStack{
                Text("Create your account \n here!")
                    .font(.largeTitle.bold())
                    .fixedSize()
                    .padding(.horizontal)
                    .padding(.bottom,40)
                    .multilineTextAlignment(.leading)
                
                Spacer()

            }
            
            
            textFieldTemplate( text: $SignUpObj.Email, placeholder: "Dummy@example.com", Symbol: "envelope")
                .padding(.horizontal)
            
            textFieldTemplate(text: $SignUpObj.Username , placeholder: "Username", Symbol: "person")
                //TextField Password attributes
                .padding(.horizontal)
            
            textFieldTemplate(text: $SignUpObj.password , placeholder: "Password", Symbol: "lock")
                //TextField Password attributes
                .padding(.horizontal)
            textFieldTemplate( text: $SignUpObj.ConfirmPass, placeholder: "Confirm Password", Symbol: "lock")
                .padding(.horizontal)
            
            textFieldTemplate(text: $SignUpObj.course , placeholder: "Course name", Symbol: "text.book.closed")
                //TextField Password attributes
                .padding(.horizontal)
                
            
            
                
            Button(){
                //function for authentication
                
            }
            label:{
              Text("SignUp")
                //Atribbutes for Button Login
                .foregroundColor(.white)
                .frame(width: 250, height: 45)
                .background(Color.black)
                .cornerRadius(11)
                .padding(.top,20)
            }
            Spacer()
            
            Button(){
                currView.wrappedValue.dismiss()
                
            }
        
            label:{
              Text("Already a member? Login here ")
                //Atribbutes for Button Login
                .foregroundColor(.blue)
                .padding()
                .padding(.top,20)
            }
        }
    }
}

struct SignUpVC_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SignUpVC()
        }
    }
}
 
