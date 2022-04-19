//
//  CookBookStructures.swift
//  Cook Book
//
//  Created by Thomas Gray on 19/04/2022.
//

import Foundation

struct CookBook {
    var title: String
    let recipes: String?
    
    init(title: String, recipes: String? = nil) {
        self.title = title
        self.recipes = recipes
    }
}
