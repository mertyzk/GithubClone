//
//  UIView+Ext.swift
//  GithubFollowers
//
//  Created by Macbook Air on 16.10.2022.
//

import Foundation
import UIKit

extension UIView {
    
    func addSubviewsExt(_ views: UIView...) {
        for view in views { addSubview(view)}
    }
    
    func pinToEdges(of superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }
    
}
