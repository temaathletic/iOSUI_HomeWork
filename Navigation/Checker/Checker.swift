//
//  Checker.swift
//  Navigation
//
//  Created by temaathletic on 07.01.2023.
//

import UIKit

class Checker {
    
    static let shared = Checker()

    private let login = "temaathletic"
    private let password = "12345"
    
    private init() {}
    
    func check(for login: String, and password: String) -> Bool {
        if self.login == login && self.password == password {
            return true
        } else {
            return false
        }
    }
}

protocol LoginViewControllerDelegate {
    func check(for login: String, and password: String) -> Bool
}

extension LoginViewControllerDelegate {
    func check(for login: String, and password: String) -> Bool {
        return Checker.shared.check(for: login, and: password)
    }
}

struct LoginInspector: LoginViewControllerDelegate {
    func check(for login: String, and password: String) -> Bool {
        return Checker.shared.check(for: login, and: password)
    }
}
