//
//  StudentForumApp.swift
//  StudentForum
//
//  Created by chariton sapkas on 18/01/2022.
//

import SwiftUI
import Firebase

@main
struct StudentForumApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                LoginVC()
            }
        }
    }
}
