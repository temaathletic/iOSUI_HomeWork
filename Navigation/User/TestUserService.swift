//
//  TestUserService.swift
//  Navigation
//
//  Created by temaathletic on 24.12.2022.
//

import UIKit

class TestUserService: UserService {
    
    let user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    func checkUser(for login: String, and password: String) -> User? {
        let currentUser = User(login: "DemoUser", password: "12345", fullName: "Demo User", avatar: UIImage(named: "FighterBaki")!, status: "Baki Power!")
        
        
        if ( currentUser.login == login && currentUser.password == password ) {
            return currentUser
        } else { return nil }
    }
}

 
