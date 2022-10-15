//
//  GFEmptyStateView.swift
//  GithubFollowers
//
//  Created by Macbook Air on 9.10.2022.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel    = GFTitleLabel(textAlignment: .center, fontSize: 27)
    let logoImageView   = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(message: String) {
        self.init(frame: .zero)
        messageLabel.text = message
    }
    
    private func configure() {
        configureMessageLabel()
        configureLogoImageView()
    }
    
    private func configureMessageLabel() {
        addSubview(messageLabel)
        messageLabel.numberOfLines      = 3
        messageLabel.textColor          = .secondaryLabel
        let labelCenterYConstant: CGFloat = DeviceTypes.is_iPhoneSE || DeviceTypes.is_iPhone8Zoomed ? -80 : -150
        let messageLabelCenterYConstraint = messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: labelCenterYConstant)
        messageLabelCenterYConstraint.isActive = true
        NSLayoutConstraint.activate([
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant:  40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func configureLogoImageView() {
        addSubview(logoImageView)
        logoImageView.image             = Images.emptyStateLogo
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        let logoBottomConstant: CGFloat = DeviceTypes.is_iPhoneSE || DeviceTypes.is_iPhone8Zoomed ? 80 : 40
        let logoImageViewBottomConstraint = logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: logoBottomConstant)
        logoImageViewBottomConstraint.isActive = true
        NSLayoutConstraint.activate([
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant:  40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
}
