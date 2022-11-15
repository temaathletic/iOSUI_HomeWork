//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private var statusTextField: UITextField = {
        let field = UITextField()
        field.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        field.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        field.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        field.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        field.layer.borderWidth = 1
        field.layer.cornerRadius = 12
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 45))
        field.translatesAutoresizingMaskIntoConstraints = false
        
        return field
    }()
    
    private lazy var statusButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.3195970058, green: 0.5052227378, blue: 0.7235928774, alpha: 1)
        button.setTitle("Set status", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.cornerRadius = 15
        button.layer.shadowRadius = 4
        button.layer.shadowOffset = (CGSize(width: 4, height: 4))
        button.layer.shadowOpacity = 0.7
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(setStatus), for: .touchUpInside)
        
        return button
    }()
    
    @objc func setStatus() {
        
        if let text = statusTextField.text
        {
            statusLabel.text = text
        }
        
    }
    
    private var statusLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Waiting for something..."
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Kawaii Dog"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var avatarImage: UIImageView = {
        let imageName = "ava"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 75
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = CGColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        imageView.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private var pageTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Profile"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var lineView: UIView = {
        var lineView = UIView()
        lineView.layer.borderWidth = 1.0
        lineView.layer.borderColor = UIColor.gray.cgColor
        lineView.translatesAutoresizingMaskIntoConstraints = false
        
        return lineView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
        
        addSubview(lineView)
        addSubview(avatarImage)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(statusButton)
        addSubview(statusTextField)
        addSubview(pageTitleLabel)
        
        NSLayoutConstraint.activate([
            
            avatarImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            avatarImage.heightAnchor.constraint(equalToConstant: 150),
            avatarImage.widthAnchor.constraint(equalToConstant: 150),
            
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 20),
            nameLabel.heightAnchor.constraint(lessThanOrEqualToConstant: 20),
            nameLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 110),
        
            lineView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            lineView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0),
            lineView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            
            statusButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            statusButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            statusButton.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 16),
            statusButton.heightAnchor.constraint(equalToConstant: 45),
            
            statusLabel.leftAnchor.constraint(equalTo: avatarImage.rightAnchor, constant: 20),
            statusLabel.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: -75),
            statusLabel.heightAnchor.constraint(equalToConstant: 20),
            
            statusTextField.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: -16),
            statusTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            statusTextField.leftAnchor.constraint(equalTo: avatarImage.rightAnchor, constant: 20),
            statusTextField.heightAnchor.constraint(equalToConstant: 45),
            
            pageTitleLabel.heightAnchor.constraint(equalToConstant: 20),
            pageTitleLabel.bottomAnchor.constraint(equalTo: lineView.topAnchor, constant: -15),
            pageTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        
        ])
    }
    
    
}
