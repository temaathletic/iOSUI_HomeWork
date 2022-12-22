//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by temaathletic on 16.11.2022.
//

import UIKit
import StorageService

class PostTableViewCell: UITableViewCell {
    
    private lazy var titlePostLabel: UILabel = {
        let title = UILabel()
        title.font = .boldSystemFont(ofSize: 20)
        title.numberOfLines = 2
        title.textColor = .black
        title.translatesAutoresizingMaskIntoConstraints = false
        
        return title
    }()
    
    private lazy var imagePostView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 40
        image.backgroundColor = .black
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private lazy var descriptionPostLabel: UILabel = {
        let description = UILabel()
        description.font = .systemFont(ofSize: 14)
        description.textColor = .systemGray
        description.numberOfLines = 0
        description.translatesAutoresizingMaskIntoConstraints = false
        
        return description
    }()
    
    private lazy var likePostLabel: UILabel = {
        let like = UILabel()
        like.font = .boldSystemFont(ofSize: 15)
        like.textColor = .black
        like.translatesAutoresizingMaskIntoConstraints = false
        
        return like
    }()
    
    private lazy var likePostIcon: UIImageView = {
        let image = UIImage(systemName: "heart")
        let imageView = UIImageView(image: image!)
        imageView.tintColor = .gray
        
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private var rectangle1: UIView = {
        let rectangle = UIView()
        rectangle.backgroundColor = #colorLiteral(red: 0.9195838571, green: 0.9430522323, blue: 0.9426428676, alpha: 1)
        rectangle.layer.cornerRadius = 15
        
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        
        return rectangle
    }()
    
    private lazy var commentIcon: UIImageView = {
        let image = UIImage(systemName: "bubble.left")
        let imageView = UIImageView(image: image!)
        imageView.tintColor = .gray
        
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private var rectangle2: UIView = {
        let rectangle = UIView()
        rectangle.backgroundColor = #colorLiteral(red: 0.9195838571, green: 0.9430522323, blue: 0.9426428676, alpha: 1)
        rectangle.layer.cornerRadius = 15
        
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        
        return rectangle
    }()
    
    private lazy var repostIcon: UIImageView = {
        let image = UIImage(systemName: "arrowshape.turn.up.forward")
        let imageView = UIImageView(image: image!)
        imageView.tintColor = .gray
        
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private var rectangle3: UIView = {
        let rectangle = UIView()
        rectangle.backgroundColor = #colorLiteral(red: 0.9195838571, green: 0.9430522323, blue: 0.9426428676, alpha: 1)
        rectangle.layer.cornerRadius = 15
        
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        
        return rectangle
    }()
    
    private lazy var viewPostLabel: UILabel = {
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 15)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var viewPostIcon: UIImageView = {
        let image = UIImage(systemName: "eye.fill")
        let imageView = UIImageView(image: image!)
        imageView.tintColor = .gray
        
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPosts(for model: Post) {
        titlePostLabel.text = model.title
        descriptionPostLabel.text = model.description
        imagePostView.image = UIImage(named: model.image)
        likePostLabel.text = "\(model.likes)"
        viewPostLabel.text = "\(model.views)"
    }
    
    func setupView(){
        
        contentView.addSubview(rectangle1)
        contentView.addSubview(rectangle2)
        contentView.addSubview(rectangle3)
        contentView.addSubview(titlePostLabel)
        contentView.addSubview(descriptionPostLabel)
        contentView.addSubview(imagePostView)
        contentView.addSubview(likePostLabel)
        contentView.addSubview(likePostIcon)
        contentView.addSubview(repostIcon)
        contentView.addSubview(commentIcon)
        contentView.addSubview(viewPostLabel)
        contentView.addSubview(viewPostIcon)
        
        NSLayoutConstraint.activate([
            
//MARK: - Post's name
            titlePostLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            titlePostLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            
//MARK: - Post's image
            
            imagePostView.topAnchor.constraint(equalTo: titlePostLabel.bottomAnchor, constant: 8),
            imagePostView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            imagePostView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
            imagePostView.heightAnchor.constraint(equalToConstant: 230),
            
//MARK: - Post's descriptiooon
            
            descriptionPostLabel.topAnchor.constraint(greaterThanOrEqualTo: imagePostView.bottomAnchor, constant: 8),
            descriptionPostLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            descriptionPostLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            descriptionPostLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -56),
            
//MARK: - Post's likes
            
            likePostLabel.topAnchor.constraint(greaterThanOrEqualTo: descriptionPostLabel.bottomAnchor, constant: -8),
            likePostLabel.centerYAnchor.constraint(equalTo: rectangle1.centerYAnchor),
            likePostLabel.leftAnchor.constraint(equalTo: likePostIcon.rightAnchor, constant: 4),
            likePostLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            likePostIcon.topAnchor.constraint(greaterThanOrEqualTo: descriptionPostLabel.bottomAnchor, constant: -8),
            likePostIcon.centerYAnchor.constraint(equalTo: rectangle1.centerYAnchor),
            likePostIcon.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            likePostIcon.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            rectangle1.leftAnchor.constraint(equalTo: likePostIcon.leftAnchor, constant: -5),
            rectangle1.rightAnchor.constraint(equalTo: likePostLabel.rightAnchor,  constant: 5),
            rectangle1.topAnchor.constraint(equalTo: likePostIcon.topAnchor, constant: -5),
            rectangle1.bottomAnchor.constraint(equalTo: likePostLabel.bottomAnchor, constant: 5),
            
//MARK: - Post's reposts
            
            repostIcon.topAnchor.constraint(greaterThanOrEqualTo: descriptionPostLabel.bottomAnchor, constant: -8),
            repostIcon.centerYAnchor.constraint(equalTo: rectangle3.centerYAnchor),
            repostIcon.leftAnchor.constraint(equalTo: rectangle2.rightAnchor, constant: 10),
            repostIcon.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            rectangle3.leftAnchor.constraint(equalTo: repostIcon.leftAnchor, constant: -8),
            rectangle3.rightAnchor.constraint(equalTo: repostIcon.rightAnchor,  constant: 8),
            rectangle3.topAnchor.constraint(equalTo: repostIcon.topAnchor, constant: -5),
            rectangle3.bottomAnchor.constraint(equalTo: repostIcon.bottomAnchor, constant: 5),
            
//MARK: - Post's comment
            
            commentIcon.topAnchor.constraint(greaterThanOrEqualTo: descriptionPostLabel.bottomAnchor, constant: -8),
            commentIcon.centerYAnchor.constraint(equalTo: rectangle2.centerYAnchor),
            commentIcon.leftAnchor.constraint(equalTo: rectangle1.rightAnchor, constant: 10),
            commentIcon.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            rectangle2.leftAnchor.constraint(equalTo: commentIcon.leftAnchor, constant: -8),
            rectangle2.rightAnchor.constraint(equalTo: commentIcon.rightAnchor,  constant: 8),
            rectangle2.topAnchor.constraint(equalTo: commentIcon.topAnchor, constant: -5),
            rectangle2.bottomAnchor.constraint(equalTo: commentIcon.bottomAnchor, constant: 5),
            
//MARK: - Post's views
            
            viewPostLabel.topAnchor.constraint(greaterThanOrEqualTo: descriptionPostLabel.bottomAnchor, constant: -8),
            viewPostLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            viewPostLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),

            viewPostIcon.topAnchor.constraint(greaterThanOrEqualTo: descriptionPostLabel.bottomAnchor, constant: -8),
            viewPostIcon.rightAnchor.constraint(equalTo: viewPostLabel.leftAnchor, constant: -7),
            viewPostIcon.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
        ])
    }
    
    
}
