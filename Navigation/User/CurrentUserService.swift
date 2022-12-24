//
//  CurrentUserService.swift
//  Navigation
//
//  Created by temaathletic on 24.12.2022.
//

import UIKit

class CurrentUserService: UserService {
    
    let user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    func checkUser(for login: String, and password: String) -> User? {
        let currentUser = User(login: "temaathletic", password: "12345", fullName: "Artem Zaytsev", avatar: UIImage(named: "ava")!, status: "Back at it again")
        
        
        if ( currentUser.login == login && currentUser.password == password ) {
            return currentUser
        } else { return nil }
    }
}
