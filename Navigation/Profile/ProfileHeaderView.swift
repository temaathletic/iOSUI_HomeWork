//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit
import SnapKit

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
        label.text = ""
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
        addSubview(statusTextField)
        addSubview(statusButton)
        
//MARK: - Update Constraint with "SnapKit"
        
        avatarImage.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(16)
            make.size.equalTo(150)
        }
        
        nameLabel.snp.makeConstraints({ make in
            make.top.equalToSuperview().inset(27)
            make.left.equalTo(avatarImage.snp.right).offset(20)
            make.right.equalToSuperview().inset(16)
        })
        
        statusLabel.snp.makeConstraints { make in
            make.left.equalTo(avatarImage.snp.right).offset(20)
            make.bottom.equalTo(statusButton.snp.top).offset(-75)
            make.right.equalToSuperview().inset(16)
        }
        
        statusTextField.snp.makeConstraints { make in
            make.bottom.equalTo(statusButton.snp.top).offset(-16)
            make.left.equalTo(avatarImage.snp.right).offset(20)
            make.right.equalToSuperview().inset(16)
            make.height.equalTo(45)
        }
        
        statusButton.snp.makeConstraints { make in
            make.height.equalTo(45)
            make.top.equalTo(avatarImage.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(-5)
        }
    }
    
    @objc func setStatus() {
        
        if let text = statusTextField.text
        {
            statusLabel.text = text
        }
    }
}
