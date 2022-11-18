//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class ProfileHeaderView: UITableViewHeaderFooterView {
    
    var callback: (() -> ())?
    
    private lazy var avatarImage: UIImageView = {
        let imageName = "ava"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 75
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = CGColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        imageView.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imagePressed)))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        
        return imageView
    }()
    
    @objc func imagePressed() {
        
        callback?()
    
    }
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Kawaii Dog"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.isUserInteractionEnabled = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var statusLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Waiting for something..."
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.isUserInteractionEnabled = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var statusTextField: UITextField = {
        let field = UITextField()
        field.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        field.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        field.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        field.placeholder = "Set status"
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
        button.layer.cornerRadius = 15
        button.layer.shadowRadius = 4
        button.layer.shadowOffset = (CGSize(width: 4, height: 4))
        button.layer.shadowOpacity = 0.7
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(setStatus), for: .touchUpInside)
        
        return button
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
        addSubview(avatarImage)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(statusButton)
        addSubview(statusTextField)
        
        
        NSLayoutConstraint.activate([
            
            avatarImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            avatarImage.heightAnchor.constraint(equalToConstant: 150),
            avatarImage.widthAnchor.constraint(equalToConstant: 150),
            
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            //            nameLabel.heightAnchor.constraint(lessThanOrEqualToConstant: 20),
            //            nameLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 110),
            
            statusLabel.leftAnchor.constraint(equalTo: avatarImage.rightAnchor, constant: 20),
            statusLabel.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: -75),
            statusLabel.heightAnchor.constraint(equalToConstant: 20),
            
            statusTextField.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: -16),
            statusTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            statusTextField.leftAnchor.constraint(equalTo: avatarImage.rightAnchor, constant: 20),
            statusTextField.heightAnchor.constraint(equalToConstant: 45),
            
            statusButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            statusButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            statusButton.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 16),
            statusButton.heightAnchor.constraint(equalToConstant: 45),
            statusButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        ])
    }
    
    @objc func setStatus() {
        
        if let text = statusTextField.text
        {
            statusLabel.text = text
        }
    }
}
