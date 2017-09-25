//
//  LocalAuthorization.swift
//  iOSTestWork
//
//  Created by Artem Klushin on 25.09.17.
//  Copyright © 2017 TheGreatCompany. All rights reserved.
//

import Foundation

public class LocalAuthorization : AuthorizationProtocol {
    
    public func canSignIn(email: String, password: String) -> Bool {
        
        return validateEmail(email: email).isEmpty && validatePassWord(password: password).isEmpty;
        
    }
    
    public func validateEmail(email: String) -> String {

        if (email.isEmpty)
        {
            return "Email не может быть пустым";
        }
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}";
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if (emailTest.evaluate(with: email))
        {
            return "";
        }
        else
        {
            return "Email имеет неверный формат";
        }
    }
    
    public func validatePassWord(password: String) -> String {
        
        if (password.isEmpty)
        {
            return "Пароль не может быть пустым";
        }
        
        let emailRegEx = "^(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{6,}$";
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if (emailTest.evaluate(with: password))
        {
            return "";
        }
        else
        {
            return "Пароль недостаточно надежный";
        }
    }
}
