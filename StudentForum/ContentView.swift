//
//  ContentView.swift
//  StudentForum
//
//  Created by chariton sapkas on 18/01/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: LoginVM
    var body: some View {
        if viewModel.ConfirmLoged == nil {
            
        } else{
            ZStack(alignment: .topLeading){
                Tab()
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

//FIREBASE CODE:

//import UIKit
//import Firebase
//
//
//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//  var window: UIWindow?
//
//  func application(_ application: UIApplication,
//    didFinishLaunchingWithOptions launchOptions:
//      [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
//    FirebaseApp.configure()
//
//    return true
//  }
//}
