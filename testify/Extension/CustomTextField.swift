//
//  CustomTextField.swift
//  testify
//
//  Created by Beatriz Teles Castro on 15/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    var padding = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 50)
    var bottomBorder = UIView()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.translatesAutoresizingMaskIntoConstraints = false
        bottomBorder = UIView.init(frame: CGRect(x: 0, y: 0, width: percentOfWidth(percente: 16), height: percentOfHeight(percente: 16)))
        bottomBorder.translatesAutoresizingMaskIntoConstraints = false
        
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.textColor = #colorLiteral(red: 0.3803921569, green: 0.3764705882, blue: 0.3764705882, alpha: 1)
        self.backgroundColor = .white
        self.tintColor = .background_app
        
        self.elevate(elevation: 4)
        self.layer.cornerRadius = 15
        
      
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += 16
        return textRect
    }
    

    func setIconErrorRight(){
        self.layer.borderWidth = 2
        self.layer.borderColor = #colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 0.5)
        
    }
    func removeEffects(){
        self.layer.borderWidth = 0
        self.layer.borderColor = UIColor.gray.cgColor
    }
    func changeStateF(){
        rightView?.isHidden = false
    }
    func changeStateT(){
        rightView?.isHidden = true
    }
    
    func setPasswordShowButton(_ customButton : UIButton){
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 40, y: 30, width: 40, height: 40))
        iconContainerView.addSubview(customButton)
        rightView = iconContainerView
        rightViewMode = .always
    }
    
}
