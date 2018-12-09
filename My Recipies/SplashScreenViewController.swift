//
//  SplashScreenViewController.swift
//  My Recipies
//
//  Created by Quinn Wilson on 12/7/18.
//  Copyright © 2018 Neoteric Technology. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var appLoadingIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: App Initialization
        appInitialization()
    }
    
    //MARK: Private Methods
    private func appInitialization() {
        appLoadingIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(6), execute: {
            self.appLoadingIndicator.stopAnimating()
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "TabViewController")
            self.present(newViewController, animated: true, completion: nil)
        })
    }
}

