//
//  ProfileViewController.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private var myView: ProfileHeaderView = {
        let profileHeaderView = ProfileHeaderView()
        profileHeaderView.backgroundColor = #colorLiteral(red: 0.9442123175, green: 0.9491845965, blue: 0.9663036466, alpha: 1)
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        
        return profileHeaderView
    }()
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        
        title = "Profile"
        view.addSubview(myView)
        
        NSLayoutConstraint.activate([
            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myView.heightAnchor.constraint(equalToConstant: 932)
        ])
    }
}
