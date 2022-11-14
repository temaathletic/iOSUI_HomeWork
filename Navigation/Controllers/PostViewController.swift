//
//  PostViewController.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    private lazy var button: UIBarButtonItem = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "book.fill"), for: .normal)
        button.addTarget(self, action: #selector(self.showInfo), for: .touchUpInside)
        let button1 = UIBarButtonItem()
        button1.customView = button
        
        return button1
    }()
    
    @objc private func showInfo() {
        let postScene = InfoViewController()
        self.navigationController?.pushViewController(postScene, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItems = [button]
        view.backgroundColor = #colorLiteral(red: 0.9442123175, green: 0.9491845965, blue: 0.9663036466, alpha: 1)
    }
}
