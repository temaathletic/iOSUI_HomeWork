//
//  AnimationViewController.swift
//  Navigation
//
//  Created by temaathletic on 17.11.2022.
//

import UIKit

class AnimationViewController: UIViewController {
    
    private lazy var closeButton: UIButton = {
        let button = UIButton(type: .custom)
        let image = UIImage(systemName: "xmark.circle.fill")
        button.alpha = 0
        button.clipsToBounds = true
        button.setImage(image, for: .normal)
        button.tintColor = .black
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(tapOnClose), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var avatarImageIncrease: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "ava")
        image.clipsToBounds = true
        image.layer.cornerRadius = 75
        image.layer.borderWidth = 3
        image.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        setupView()
        let finalWidth = (Float(view.frame.width) / 175)
        let finalHeight = (Float(view.frame.height) / 350)
        animationIncrease(with: finalWidth, and: finalHeight)
    }
    
    private func animationIncrease(with finalWidth: Float, and finalHeight: Float){
        UIView.animate(withDuration: 0.5) {
            self.view.alpha = 0.9
            self.avatarImageIncrease.layer.cornerRadius = 0
            self.avatarImageIncrease.transform = CGAffineTransform(scaleX: CGFloat(finalWidth), y: CGFloat(finalHeight))
        } completion: { _ in
            UIView.animate(withDuration: 0.3) {self.closeButton.alpha = 1} completion: { _ in }
        }
    }
    
    private func animationClose(with finalWidth: Float, and finalHeight: Float){
        UIView.animate(withDuration: 1) {
            self.view.alpha = 1
            self.closeButton.alpha = 0
            self.avatarImageIncrease.layer.cornerRadius = 75
            self.avatarImageIncrease.transform = CGAffineTransform(scaleX: CGFloat(finalWidth), y: CGFloat(finalHeight))
        } completion: { _ in  }
    }
    
    
    private func setupView() {
    
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.addSubview(closeButton)
        view.addSubview(avatarImageIncrease)

        NSLayoutConstraint.activate([
            
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
//            closeButton.heightAnchor.constraint(equalToConstant: 20),
//            closeButton.widthAnchor.constraint(equalToConstant: 20),
            
            avatarImageIncrease.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarImageIncrease.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            avatarImageIncrease.heightAnchor.constraint(equalToConstant: 150),
            avatarImageIncrease.widthAnchor.constraint(equalToConstant: 150),
        ])
    }
    
    @objc private func tapOnClose(){
        
        let finalWidth = 1/(Float(view.frame.width) / 175)
        let finalHeight = 1/(Float(view.frame.height) / 350)
        animationClose(with: finalWidth, and: finalHeight)
        
        Timer.scheduledTimer(timeInterval: 1.3, target: self, selector: #selector(moveBack), userInfo: .none, repeats: false)
    }
    
    @objc private func moveBack(){
        navigationController?.popViewController(animated: false)
    }
}
