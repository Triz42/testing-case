//
//  IntroComponents.swift
//  testify
//
//  Created by Beatriz Teles Castro on 15/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit
class IntroComponents {
    
    //MARK: - Background
    var bgGradientLayer : CAGradientLayer = {
        let bg = CAGradientLayer()
        bg.backgroundColor = UIColor.background_app.cgColor
        bg.colors = [  #colorLiteral(red: 0.5503503084, green: 0.5159643888, blue: 0.947781384, alpha: 0.2278735017).cgColor, #colorLiteral(red: 0.5503503084, green: 0.5159643888, blue: 0.947781384, alpha: 0.2278735017).cgColor]
        bg.startPoint = CGPoint.init(x: 0.5, y: 0)
        bg.endPoint = CGPoint.init(x: 0.5, y: 1)
        return bg
    }()
    
    //MARK: - Label
    var testLabel: UILabel = {
        let component = UILabel()
        component.translatesAutoresizingMaskIntoConstraints = false
        
        let title = "Test"
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: title)
        
        attributedText.apply(font: NSMutableAttributedString.Font.PoppinsBold.rawValue, size: 16, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), subString: title)
        
        component.attributedText = attributedText
        component.numberOfLines = 1
    
        return component
    }()
    
    var ifyLabel: UILabel = {
        let component = UILabel()
        component.translatesAutoresizingMaskIntoConstraints = false
        
        let title = "ify"
        
        let color = #colorLiteral(red: 0.9450980392, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: title)
        
        attributedText.apply(font: NSMutableAttributedString.Font.PoppinsBold.rawValue, size: 16, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), subString: title)
        
        component.attributedText = attributedText
        component.numberOfLines = 1
    
        return component
    }()
}
