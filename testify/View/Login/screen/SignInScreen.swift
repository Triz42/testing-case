//
//  SignInScreen.swift
//  testify
//
//  Created by Beatriz Teles Castro on 15/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit

final class SignInScreen : UIView {
    
    private var initialConstraints = [NSLayoutConstraint]()
    private let components: SignInComponents
    
    init(components: SignInComponents, frame : CGRect) {
        self.components = components
        super.init(frame: frame)
        
        setupView()
        setupConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
        // Background
        components.bgGradientLayer.frame = (bounds)
        layer.addSublayer(components.bgGradientLayer)
        
        addSubview(components.logoImageView)
        addSubview(components.forTestersLabel)
        
        addSubview(components.cardView)
        
        components.cardView.addSubview(components.userTextField)
    }
    
    private func setupConstraint(){
        
        components.logoImageView.centerX(inView: self)
        components.logoImageView.anchor(top: self.safeAreaLayoutGuide.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 130, height: 80, trailling: nil, leading: nil)
        
        components.forTestersLabel.anchor(top: components.logoImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: -20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, trailling: nil, leading: nil)
        
        components.cardView.centerYConstant(inView: self, constant: 40)
        components.cardView.anchor(top: nil, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: -20, width: 0, height: 350, trailling: nil, leading: nil)
        
        components.userTextField.anchor(top: components.cardView.topAnchor, left: components.cardView.leftAnchor, bottom: nil, right: components.cardView.rightAnchor, paddingTop: 40, paddingLeft: 20, paddingBottom: 0, paddingRight: -20, width: 0, height: 50, trailling: nil, leading: nil)
    }
}
