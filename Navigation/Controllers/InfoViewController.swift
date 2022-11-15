//
//  InfoViewController.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    private var titleLabel: UILabel = {
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 21))
        label.center = CGPoint(x: 215, y: 75)
        label.textAlignment = .center
        label.text = "Info"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        return label
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 140, height: 50))
        button.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        button.setTitle("Click on me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.center = CGPoint(x: 215, y: 466)
        
        button.addTarget(self, action: #selector(self.rightBarButton), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        
        view.addSubview(button)
        view.addSubview(titleLabel)
        view.backgroundColor = #colorLiteral(red: 0.9442123175, green: 0.9491845965, blue: 0.9663036466, alpha: 1)
    }
    
    @objc private func rightBarButton() {
        presentSimpleAlert(title: "In Development", message: "Soon...")
    }
    
}
