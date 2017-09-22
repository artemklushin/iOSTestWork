//
//  SignInViewController.swift
//  iOSTestWork
//
//  Created by Artem Klushin on 22.09.17.
//  Copyright © 2017 TheGreatCompany. All rights reserved.
//

import UIKit

public class SignInViewController : UIViewController {
    
    @IBOutlet weak var containerViewBottomConstraint: NSLayoutConstraint!
    
    public override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "Авторизация";
        self.navigationController?.navigationBar.topItem?.backBarButtonItem?.title = "";
        
        NotificationCenter.default.addObserver(self, selector: #selector(SignInViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(SignInViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc private func keyboardWillShow(notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            self.containerViewBottomConstraint.constant = keyboardSize.height;
            if let keyboardAnimDuration = notification.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber {
                UIView.animate(withDuration: TimeInterval(keyboardAnimDuration), animations: {
                    self.view.layoutIfNeeded();
                })
            }
        }
    }
    
    @objc private func keyboardWillHide(notification: Notification) {
        if let keyboardAnimDuration = notification.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber {
            self.containerViewBottomConstraint.constant = 0;
            UIView.animate(withDuration: TimeInterval(keyboardAnimDuration), animations: {
                self.view.layoutIfNeeded();
            })
        }
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
    }
}
