//
//  LoginFactory.swift
//  Navigation
//
//  Created by temaathletic on 07.01.2023.
//

import UIKit

protocol LoginFactory {
    func makeLoginInspector() -> LoginInspector
}

struct MyLoginFactory: LoginFactory {
    func makeLoginInspector() -> LoginInspector {
        let loginInspector = LoginInspector()
        return loginInspector
    }
}
