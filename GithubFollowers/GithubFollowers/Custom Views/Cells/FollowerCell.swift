//
//  FollowerCell.swift
//  GithubFollowers
//
//  Created by Macbook Air on 18.09.2022.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "FollowerCell"
    
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let userNameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        userNameLabel.text = follower.login
        avatarImageView.downloadImage(from: follower.avatarUrl)
    }
    
    private func configure(){
        addSubview(avatarImageView)
        addSubview(userNameLabel)
        
        let paddding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: paddding),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: paddding),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -paddding),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            
            userNameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
            userNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: paddding),
            userNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -paddding),
            userNameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
