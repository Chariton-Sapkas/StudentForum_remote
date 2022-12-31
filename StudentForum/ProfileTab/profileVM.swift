//
//  profileVM.swift
//  StudentForum
//
//  Created by chariton sapkas on 05/03/2022.
//

import Foundation

enum ActionButtons: Int,CaseIterable{
    case myPosts,groups,saved
    
    var caseName: String{
        switch self{
        case .myPosts: return "My posts"
        case .groups: return "Groups"
        case .saved: return "Saved posts"
       
        }
    }
}
