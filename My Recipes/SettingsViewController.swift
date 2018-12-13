//
//  SettingsViewController.swift
//  My Recipies
//
//  Created by Quinn Wilson on 12/7/18.
//  Copyright © 2018 Neoteric Technology. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var userProfileImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userNameText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userNameLabel.text = "Betty Crocker"
        self.userProfileImage.layer.cornerRadius = self.userProfileImage.frame.size.width / 2;
        self.userProfileImage.clipsToBounds = true;
    }
    
    
}

