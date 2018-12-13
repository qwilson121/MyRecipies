//
//  FirstViewController.swift
//  My Recipies
//
//  Created by Quinn Wilson on 12/7/18.
//  Copyright © 2018 Neoteric Technology. All rights reserved.
//

import UIKit
import os.log

class HomeViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var userProfile: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var newRecipeIcon: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userProfile.layer.cornerRadius = self.userProfile.frame.size.width / 2;
        self.userProfile.clipsToBounds = true;
        self.userName.text = "Betty Crocker";
        
        // create tap gesture recognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(gesture:)))
        
        // add it to the image view;
        newRecipeIcon.addGestureRecognizer(tapGesture)
        // make sure imageView can be interacted with by user
        newRecipeIcon.isUserInteractionEnabled = true
    }
    
    
    
    //MARK: Navigation
    @IBAction func newRecipe(_ sender: UIButton) {
        self.navigateToNewRecipe()
    }
    
    //MARK: Private Functions
    private func navigateToNewRecipe() {
        os_log("New Recipe Button Clicked", log: OSLog.default, type: .debug)
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "AddNewNavigation")
        self.present(newViewController, animated: true, completion: nil)
    }
    @objc private func imageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            self.navigateToNewRecipe()
        }
    }
    
}

