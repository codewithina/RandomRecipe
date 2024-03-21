//
//  RecipeController.swift
//  RandomRecipe
//
//  Created by Ina Burström on 2024-03-20.
//

import Foundation

class RecipeBook {
    var recipes: [Recipe] = []
    
    init(recipes: [Recipe]) {
            self.recipes = recipes
        }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
