//
//  HeadlineListViewModel.swift
//  HeadlinesApp
//
//  Created by Sujit Amin on 13/7/20.
//  Copyright © 2020 Sujit Amin. All rights reserved.
//


import Foundation

class HeadlineListViewModel {
    
    private (set) var headlineViewModels :[HeadlineViewModel] = [HeadlineViewModel]()
    
    init(sourceViewModel :SourceViewModel, completion :@escaping () -> ()) {
        
        let source = Source(sourceViewModel :sourceViewModel)
        
        Webservice().loadHeadlinesForSource(source: source) { headlines in
            
            self.headlineViewModels = headlines.map(HeadlineViewModel.init)
            
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    
    func headlineAt(index :Int) -> HeadlineViewModel{
        return self.headlineViewModels[index]
    }
}

class HeadlineViewModel {
    
    var title :String
    var description :String
    
    init(headline :Headline) {
        self.title = headline.title
        self.description = headline.description
    }
    
    init(title :String, description :String) {
        self.title = title
        self.description = description
    }
    
}
