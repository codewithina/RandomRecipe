//
//  AddRecipeViewController.swift
//  RandomRecipe
//
//  Created by Ina Burström on 2024-03-21.
//

import UIKit

class AddRecipeViewController: UIViewController {
    @IBOutlet weak var recipeName: UITextField!
    @IBOutlet weak var recipeCategory: UITextField!
    @IBOutlet weak var recipeIngredients: UITextField!
    
    var recipeBook = RecipeBook(recipes: [])
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func saveRecipe(_ sender: UIButton) {
        
        let name: String = recipeName.text ?? "Hej"
        let category: String = recipeCategory.text ?? "Hej"
        let ingredientsString: String = recipeIngredients.text ?? "Hej"

        let ingredients = ingredientsString.components(separatedBy: ",")

        let newRecipe = Recipe(name: name, category: category, ingredients: ingredients)

        recipeBook.addRecipe(recipe: newRecipe)
        
        print(recipeBook.recipes)
        
    }
}
