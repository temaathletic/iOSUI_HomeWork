//
//  LogInViewController.swift
//  Navigation
//
//  Created by temaathletic on 16.11.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    private var imageView: UIImageView = {
        let imageName = "logo"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        
        stackView.addArrangedSubview(logInButton)
        stackView.addArrangedSubview(registerButton)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var logInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.3195970058, green: 0.5052227378, blue: 0.7235928774, alpha: 1)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(pushToView), for: .touchUpInside)
        
        return button
    }()
    
    private var registerButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.9442123175, green: 0.9491845965, blue: 0.9663036466, alpha: 1)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.3195970058, green: 0.5052227378, blue: 0.7235928774, alpha: 1), for: .normal)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private lazy var textFieldStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        stackView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        stackView.layer.cornerRadius = 12
        stackView.layer.borderWidth = 1
        
        stackView.addArrangedSubview(logInTextField)
        stackView.addArrangedSubview(passwordrTextField)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var logInTextField: UITextField = {
        let field = UITextField()
        field.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        field.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        field.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        field.placeholder = "Email or Phone"
        field.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 45))
        field.translatesAutoresizingMaskIntoConstraints = false
        
        return field
    }()
    
    private lazy var passwordrTextField: UITextField = {
        let field = UITextField()
        field.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        field.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        field.placeholder = "Password"
        field.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        field.layer.cornerRadius = 12
        field.isSecureTextEntry = true
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 45))
        field.translatesAutoresizingMaskIntoConstraints = false
        
        return field
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        
        view.addSubview(imageView)
        view.addSubview(buttonStackView)
        view.addSubview(textFieldStackView)
        
        view.backgroundColor = #colorLiteral(red: 0.9442123175, green: 0.9491845965, blue: 0.9663036466, alpha: 1)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
            imageView.heightAnchor.constraint(equalToConstant: 115),
            imageView.widthAnchor.constraint(equalToConstant: 115),
            
            textFieldStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textFieldStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordrTextField.heightAnchor.constraint(equalToConstant: 50),
            logInTextField.heightAnchor.constraint(equalToConstant: 50),
            textFieldStackView.heightAnchor.constraint(equalToConstant: 100),
            textFieldStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            textFieldStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
        
            buttonStackView.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 20),
            buttonStackView.heightAnchor.constraint(equalToConstant: 80),
            buttonStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            buttonStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
    }
    
    @objc private func pushToView() {
        let postScene = ProfileViewController()
        self.navigationController?.pushViewController(postScene, animated: true)
    }
}
