//
//  User.swift
//  Navigation
//
//  Created by temaathletic on 24.12.2022.
//

import UIKit

class User {
    
    var login: String
    var fullName: String
    var avatar: UIImage
    var status: String
    
    init(login: String, fullName: String, avatar: UIImage, status: String) {
        self.login = login
        self.fullName = fullName
        self.avatar = avatar
        self.status = status
    }
}

protocol UserService {
    func checkUser(for login: String, and password: String) -> User?
}
