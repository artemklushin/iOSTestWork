//
//  WelcomeViewController.swift
//  iOSTestWork
//
//  Created by Artem Klushin on 22.09.17.
//  Copyright © 2017 TheGreatCompany. All rights reserved.
//

import UIKit

public class WelcomeViewController : UIViewController {
    let AuthorizationScreenSegue = "authScreenSegue";
    
    
    @IBAction func authButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: self.AuthorizationScreenSegue, sender: nil);
    }
}
