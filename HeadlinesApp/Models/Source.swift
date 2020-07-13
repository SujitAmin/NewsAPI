//
//  Source.swift
//  HeadlinesApp
//
//  Created by Sujit Amin on 13/7/20.
//  Copyright © 2020 Sujit Amin. All rights reserved.
//


import Foundation

class Source {
    
    var id :String
    var name :String
    var description :String
    
    init(id :String, name :String, description :String) {
        self.id = id
        self.name = name
        self.description = description 
    }
    
    init(sourceViewModel :SourceViewModel) {
        self.id = sourceViewModel.id
        self.name = sourceViewModel.name
        self.description = sourceViewModel.description
    }
    
    init?(dictionary :[String:Any]) {
        
        guard let id = dictionary["id"] as? String,
              let name = dictionary["name"] as? String,
            let description = dictionary["description"] as? String else {
                return nil
        }
        
        self.id = id
        self.name = name
        self.description = description
    }
}


