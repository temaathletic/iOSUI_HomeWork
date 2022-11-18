//
//  ProfileViewController.swift
//  Navigation
//
//  Created by temaathletic on 13.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
   
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .systemGray6
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 500
        tableView.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: "HeaderView")
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "CustomCell")
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: "miniCollectionView")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    private var viewModel: [Post] = [
        post1,
        post2,
        post3,
        post4,
        post5,
        post6,
        post7
    ]
    
    private var photoModel: [String] = [
        "1.jpg",
        "2.jpg",
        "3.jpg",
        "4.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        
        title = "Profile"
        view.backgroundColor = #colorLiteral(red: 0.9442123175, green: 0.9491845965, blue: 0.9663036466, alpha: 1)
        hideKeyboardWhenTappedAround()
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func goToCollection(for index: IndexPath){
        let vcCollection = PhotosViewController()
        self.navigationController?.pushViewController(vcCollection, animated: true)
    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            if let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderView") as? ProfileHeaderView {
                
                headerView.callback = { [weak self] in
                    let vc = AnimationViewController()
                    self?.navigationController?.pushViewController(vc, animated: false)
                }
                
                return headerView
            } else {
                return nil
            }
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 && indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "miniCollectionView", for: indexPath) as? PhotosTableViewCell {
                cell.selectionStyle = .none
                cell.setupMiniCollection(for: photoModel)
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
                return cell
            }
        } else {
            
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? PostTableViewCell {
                let post = self.viewModel[indexPath.row]
                cell.backgroundColor = .white
                cell.setupPosts(for: post)
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
                return cell
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 && indexPath.row == 0 {
            goToCollection(for: indexPath)
        }
    }
    
}



