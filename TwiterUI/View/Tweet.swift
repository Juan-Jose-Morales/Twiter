//
//  Tweet.swift
//  TwiterUI
//
//  Created by Juan jose Morales on 2/11/22.
//

import Foundation

struct Tweet: Identifiable {
    
    
    
    
    let id = UUID()
    let autorName: String
    let authorUserName: String
    let timeStampText: String
    let text: String
    let numberOfReplies: Int
    let numberOfRetweets: Int
    let numberOfLikes: Int
    
}
