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
        
        alertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            
            switch action.style {
                
            case .default:
                print("Ok")
                
            case .cancel:
                print("Cancel")
                
            case .destructive:
                print("destructive")
            }}))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { action in
            
            switch action.style{ 
                 
            case .default:
                print("Cancel")
                
            case .cancel:
                print("Cancel")
                
            case .destructive:
                print("destructive")
            }}))
        

        
        present(alertController, animated: true)
    }
}



