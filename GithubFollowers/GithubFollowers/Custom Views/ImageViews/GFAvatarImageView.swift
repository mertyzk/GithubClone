//
//  GFAvatarImageView.swift
//  GithubFollowers
//
//  Created by Macbook Air on 18.09.2022.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache            = NetworkManager.shared.cache
    let placeHolderImage = Images.placeholder

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius                        = 10
        clipsToBounds                             = true
        image                                     = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
    }

}
