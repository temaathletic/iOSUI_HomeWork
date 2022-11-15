//
//  UIViewController + Extensions.swift
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
        
        let okAction = UIAlertAction(title: "Ok", style: .default) {_ in print("Нажата кнопка 'Действие один'")}
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {_ in print("Нажата кнопка 'Действие два'")}
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true)
    }
}



