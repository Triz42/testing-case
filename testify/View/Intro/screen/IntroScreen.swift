//
//  IntroScreen.swift
//  testify
//
//  Created by Beatriz Teles Castro on 15/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit

final class IntroScreen : UIView {
    
    private var initialConstraints = [NSLayoutConstraint]()
    private let components: IntroComponents
    
    init(components: IntroComponents, frame : CGRect) {
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
        
        addSubview(components.signUPCard)
        addSubview(components.signINCard)
        
        components.signINCard.addSubview(components.signINLabel)
        components.signINCard.addSubview(components.signINButton)
        
        components.signUPCard.addSubview(components.signUPLabel)
        components.signUPCard.addSubview(components.signUPButton)
        
    }
    
    private func setupConstraint(){
        
        components.logoImageView.center(inView: self)
        components.logoImageView.size(width: 200, height: 160)
        
        components.forTestersLabel.anchor(top: components.logoImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: -40, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, trailling: nil, leading: nil)
        
        components.signINCard.centerYConstant(inView: self, constant: 100)
        components.signINCard.anchor(top: nil, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 60, paddingBottom: 0, paddingRight: -60, width: 0, height: 70, trailling: nil, leading: nil)
        
        components.signINLabel.anchor(top: components.signINCard.topAnchor, left: components.signINCard.leftAnchor, bottom: components.signINCard.bottomAnchor, right: components.signINCard.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: -10, paddingRight: -10, width: 0, height: 0, trailling: nil, leading: nil)
        
        components.signINButton.anchor(top: components.signINCard.topAnchor, left: components.signINCard.leftAnchor, bottom: components.signINCard.bottomAnchor, right: components.signINCard.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, trailling: nil, leading: nil)
        
        components.signUPCard.anchor(top: components.signINCard.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 15, paddingLeft: 100, paddingBottom: 0, paddingRight: -100, width: 0, height: 50, trailling: nil, leading: nil)
        
        components.signUPButton.anchor(top: components.signUPCard.topAnchor, left: components.signUPCard.leftAnchor, bottom: components.signUPCard.bottomAnchor, right: components.signUPCard.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, trailling: nil, leading: nil)
        
        components.signUPLabel.anchor(top: components.signUPCard.topAnchor, left: components.signUPCard.leftAnchor, bottom: components.signUPCard.bottomAnchor, right: components.signUPCard.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: -10, paddingRight: -10, width: 0, height: 0, trailling: nil, leading: nil)
    
    }
}
