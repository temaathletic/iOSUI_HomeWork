//
//  ProfileViewController.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private var statusTextField: UITextField = {
        let field = UITextField(frame: CGRect(x: 0, y: 0, width: 230, height: 45))
        field.center = CGPoint(x: 300, y: 275)
        field.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        field.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        field.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        field.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        field.layer.borderWidth = 1
        field.layer.cornerRadius = 12
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 45))
        
        return field
    }()
    
    private var statusButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 398, height: 50))
        button.center = CGPoint(x: 215, y: 340)
        button.backgroundColor = #colorLiteral(red: 0.3195970058, green: 0.5052227378, blue: 0.7235928774, alpha: 1)
        button.setTitle("Set status", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.cornerRadius = 15
        button.layer.shadowRadius = 4
        button.layer.shadowOffset = (CGSize(width: 4, height: 4))
        button.layer.shadowOpacity = 0.7
        
        button.addTarget(self, action: #selector(setStatus), for: .touchUpInside)
        
        return button
    }()
    
    private var statusLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 155, height: 50))
        label.center = CGPoint(x: 262, y: 230)
        label.textAlignment = .left
        label.text = "Waiting for something..."
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        
        return label
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        label.center = CGPoint(x: 230, y: 145)
        label.textAlignment = .center
        label.text = "Kawaii Dog"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        return label
    }()
    
    private var avatrImage: UIImageView = {
        let imageName = "ava"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        
        imageView.frame = CGRect(x: 16, y: 115, width: 150, height: 150)
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 75
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = CGColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        imageView.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        
        return imageView
    }()
    
    private var lineView: UIView = {
        var lineView = UIView(frame: CGRect(x: 0, y: 0, width: 430, height: 1.0))
        lineView.center = CGPoint(x: 215, y: 105)
        lineView.layer.borderWidth = 1.0
        lineView.layer.borderColor = UIColor.gray.cgColor
        
        return lineView
    }()
    
    private var pageTitleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 21))
        label.center = CGPoint(x: 215, y: 75)
        label.textAlignment = .center
        label.text = "Profile"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        return label
    }()
    
    internal var viewVC: ProfileHeaderView = {
        let view = ProfileHeaderView(frame: CGRect(x: 0, y: 0, width: 430, height: 932))
        view.backgroundColor = #colorLiteral(red: 0.9442123175, green: 0.9491845965, blue: 0.9663036466, alpha: 1)
        return view
    }()
    
    private func setupView() {

        view.addSubview(viewVC)
        view.addSubview(pageTitleLabel)
        view.addSubview(lineView)
        view.addSubview(avatrImage)
        view.addSubview(nameLabel)
        view.addSubview(statusLabel)
        view.addSubview(statusButton)
        view.addSubview(statusTextField)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupView()
    }
    
    @objc func setStatus() {
        
        if let text = statusTextField.text
            {
            statusLabel.text = text
            }
        
    }
    
    
}
