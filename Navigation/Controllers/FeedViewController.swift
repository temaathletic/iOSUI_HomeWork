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
        button.setTitleColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), for: .normal)
        button.layer.cornerRadius = 20
        button.center = CGPoint(x: 215, y: 466)
        button.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        button.layer.shadowRadius = 15
        button.layer.shadowOpacity = 5
        
        button.addTarget(self, action: #selector(self.showPost), for: .touchUpInside)
        
        return button
    }()
    
    private var lineView: UIView = {
        var lineView = UIView(frame: CGRect(x: 0, y: 0, width: 430, height: 1.0))
        lineView.center = CGPoint(x: 215, y: 105)
        lineView.layer.borderWidth = 1.0
        lineView.layer.borderColor = UIColor.gray.cgColor
        
        return lineView
    }()
    
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
        
        setupView()
    }
    
    private func setupView() {
        
        view.addSubview(titleLabel)
        view.addSubview(lineView)
        view.addSubview(button)
        view.backgroundColor = #colorLiteral(red: 0.9442123175, green: 0.9491845965, blue: 0.9663036466, alpha: 1)
        
        NSLayoutConstraint.activate([
            
            lineView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            lineView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            lineView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            
            pageTitleLabel.heightAnchor.constraint(equalToConstant: 20),
            pageTitleLabel.bottomAnchor.constraint(equalTo: lineView.topAnchor, constant: -15),
            pageTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 100),
            stackView.widthAnchor.constraint(equalToConstant: 140)
        ])
    }
    
    @objc private func showPost() {
        let postScene = PostViewController()
        self.navigationController?.pushViewController(postScene, animated: true)
        let post = Post()
        postScene.title = post.title
    }

}


