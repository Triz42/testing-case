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
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
        // Background
        components.bgGradientLayer.frame = (bounds)
        layer.addSublayer(components.bgGradientLayer)
        
        addSubview(components.testLabel)
//        addSubview(components.ifyLabel)
    }
    
    private func setupConstraint(){
        
        components.testLabel.centerXConstant(inView: self, constant: 40)
        components.testLabel.centerY(inView: self)
        
    }
}
