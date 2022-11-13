//
//  UIAlert + Extensions.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

extension UIViewController {
    
    func presentSimpleAlert(title: String, message: String?) {

        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ок", style: .default)

        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}
