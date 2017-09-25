//
//  AuthorizationProtocol.swift
//  iOSTestWork
//
//  Created by Artem Klushin on 25.09.17.
//  Copyright © 2017 TheGreatCompany. All rights reserved.
//

import Foundation

protocol AuthorizationProtocol {
    
    func canSignIn(email: String, password: String) -> Bool
    
    func validateEmail(email: String) -> String
    
    func validatePassWord(password: String) -> String
}
