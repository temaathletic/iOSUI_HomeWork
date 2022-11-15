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
        button.addTarget(self, action: #selector(showInfo), for: .touchUpInside)
        let button1 = UIBarButtonItem()
        button1.customView = button
        
        return button1
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        
        navigationItem.rightBarButtonItems = [button]
        view.backgroundColor = #colorLiteral(red: 0.9442123175, green: 0.9491845965, blue: 0.9663036466, alpha: 1)
        
    }
    
    @objc private func showInfo() {
        let postScene = InfoViewController()
        postScene.modalPresentationStyle = .popover
        self.present(postScene, animated: true)
    }
    
}
