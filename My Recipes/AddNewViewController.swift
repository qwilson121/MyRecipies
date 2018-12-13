//
//  AddNewViewController.swift
//  My Recipies
//
//  Created by Quinn Wilson on 12/7/18.
//  Copyright © 2018 Neoteric Technology. All rights reserved.
//

import UIKit
import os.log

class AddNewViewController: UIViewController {
    
    //MARK: Properties
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Navigation
    @IBAction func cancelNewRecipe(_ sender: UIBarButtonItem) {
        os_log("Cancel New Recipe Button Clicked", log: OSLog.default, type: .debug)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancelNewIngredient(_ sender: UIBarButtonItem) {
            os_log("Cancel New Ingredient Button Clicked", log: OSLog.default, type: .debug)
            dismiss(animated: true, completion: nil)
    }
    @IBAction func cancelNewDirection(_ sender: UIBarButtonItem) {
        os_log("Cancel New Direction Button Clicked", log: OSLog.default, type: .debug)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func addNewIngredient(_ sender: UIButton) {
        os_log("New Ingredient Button Clicked", log: OSLog.default, type: .debug)
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "NewIngredient")
        self.present(newViewController, animated: true, completion: nil)
    }
    @IBAction func addNewDirection(_ sender: UIButton) {
        os_log("New Direction Button Clicked", log: OSLog.default, type: .debug)
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "NewDirection")
        self.present(newViewController, animated: true, completion: nil)
    }
    
}

