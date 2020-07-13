//
//  Headline.swift
//  HeadlinesApp
//
//  Created by Sujit Amin on 13/7/20.
//  Copyright © 2020 Sujit Amin. All rights reserved.
//


import Foundation

class Headline {
    
    var title :String!
    var description :String!
    
    init?(dictionary :[String:Any]) {
        
        guard let title = dictionary["title"] as? String,
            let description = dictionary["description"] as? String else {
                return nil
        }
        
        self.title = title
        self.description = description
    }
    
}
