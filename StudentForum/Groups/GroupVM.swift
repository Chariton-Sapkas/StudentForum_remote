//
//  GroupVM.swift
//  StudentForum
//
//  Created by chariton sapkas on 07/03/2022.
//

import Foundation

enum GroupButtons: Int,CaseIterable{
    case posts,memebers
    
    var caseName: String{
        switch self{
        case .posts: return "Posts"
        case .memebers: return "Members"
        }
    }
}
