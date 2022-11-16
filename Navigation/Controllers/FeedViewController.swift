//
//  FeedViewController.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 8.0
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var button1: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitle("Show Post #1", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), for: .normal)
        button.layer.cornerRadius = 20
        button.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        button.layer.shadowRadius = 15
        button.layer.shadowOpacity = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var button2: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitle("Show Post #2", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), for: .normal)
        button.layer.cornerRadius = 20
        button.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        button.layer.shadowRadius = 15
        button.layer.shadowOpacity = 5
        button.translatesAutoresizingMaskIntoConstraints = false
     
        return button
    }()
    
    private var lineView: UIView = {
        var lineView = UIView()
        lineView.layer.borderWidth = 1.0
        lineView.layer.borderColor = UIColor.gray.cgColor
        lineView.translatesAutoresizingMaskIntoConstraints = false
        
        return lineView
    }()
    
    private lazy var pageTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Feed"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        
        view.addSubview(pageTitleLabel)
        view.addSubview(lineView)
        view.addSubview(stackView)
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
    }

}


