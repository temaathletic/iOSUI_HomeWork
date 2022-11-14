//
//  ProfileViewController.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 21))
        label.center = CGPoint(x: 215, y: 75)
        label.textAlignment = .center
        label.text = "Profile"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(titleLabel)
        
        setupView()
    }
    
    private func setupView() {
        
        
        
        view.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        
        NSLayoutConstraint.activate([
            
        ])
    }
}
