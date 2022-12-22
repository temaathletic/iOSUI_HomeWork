//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by temaathletic on 16.11.2022.
//

import UIKit
import StorageService

class PhotosCollectionViewCell: UICollectionViewCell {
    
    private lazy var imageCollectionView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        addSubview(imageCollectionView)
        
        NSLayoutConstraint.activate([
            imageCollectionView.topAnchor.constraint(equalTo: topAnchor),
            imageCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func setupCell(for imageName:String){
        self.imageCollectionView.image = UIImage(named: imageName)
    }
}

