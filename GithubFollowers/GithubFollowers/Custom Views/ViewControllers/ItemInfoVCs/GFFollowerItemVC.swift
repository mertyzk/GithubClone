//
//  GFFollowerItemVC.swift
//  GithubFollowers
//
//  Created by Macbook Air on 13.10.2022.
//

import Foundation
import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
}
