//
//  FeedViewController.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 140, height: 50))
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitle("Show Post", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.layer.cornerRadius = 20
        button.center = CGPoint(x: 215, y: 466)
        
        button.addTarget(self, action: #selector(self.showPost), for: .touchUpInside)
        
        return button
    }()
    
    
    @objc private func showPost() {
        let postScene = PostViewController()
        self.navigationController?.pushViewController(postScene, animated: true)
        let post = Post()
        postScene.title = post.title
    }
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 21))
        label.center = CGPoint(x: 215, y: 75)
        label.textAlignment = .center
        label.text = "Feed"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(titleLabel)
        view.addSubview(button)
        view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    }

}


