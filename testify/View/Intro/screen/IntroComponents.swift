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
        return bg
    }()
    
    //MARK: - Label
    var testLabel: UILabel = {
        let component = UILabel()
        component.translatesAutoresizingMaskIntoConstraints = false
        
        let title = "Test"
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: title)
        
        attributedText.apply(font: NSMutableAttributedString.Font.PoppinsBold.rawValue, size: 50, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), subString: title)
        
        component.attributedText = attributedText
        component.numberOfLines = -1
        
        component.layer.shadowColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.262745098, alpha: 1).cgColor
        component.layer.shadowOffset = CGSize(width: 1, height: 1)
        component.layer.shadowRadius = CGFloat(1)
        component.layer.shadowOpacity = 1
        return component
    }()
    
    var ifyLabel: UILabel = {
        let component = UILabel()
        component.translatesAutoresizingMaskIntoConstraints = false
        
        let title = "ify"
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: title)
        
        attributedText.apply(font: NSMutableAttributedString.Font.PoppinsBold.rawValue, size: 50, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), subString: title)
        
        component.attributedText = attributedText
        component.numberOfLines = -1
        
        
        component.layer.shadowColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.262745098, alpha: 1).cgColor
        component.layer.shadowOffset = CGSize(width: 1, height: 1)
        component.layer.shadowRadius = CGFloat(1)
        component.layer.shadowOpacity = 1
        return component
    }()
    
    var forTestersLabel: UILabel = {
        let component = UILabel()
        component.translatesAutoresizingMaskIntoConstraints = false
        component.numberOfLines = -1
        
        let title = "A plataforma ideal para testers."
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: title)
        
        attributedText.apply(font: NSMutableAttributedString.Font.PoppinsLight.rawValue, size: 20, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), subString: title)
        
        component.attributedText = attributedText
        component.textAlignment = .center
        component.alpha = 0
        return component
    }()
    
    var signINLabel: UILabel = {
        let component = UILabel()
        component.translatesAutoresizingMaskIntoConstraints = false
        component.numberOfLines = -1
        
        let title = "Entrar"
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: title)
        
        attributedText.apply(font: NSMutableAttributedString.Font.PoppinsMediumItalic.rawValue, size: 20, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), subString: title)
        
        component.attributedText = attributedText
        component.textAlignment = .center
        return component
    }()
    
    var signUPLabel: UILabel = {
           let component = UILabel()
           component.translatesAutoresizingMaskIntoConstraints = false
           component.numberOfLines = -1
           
           let title = "Criar uma Conta"
           
           let attributedText = NSMutableAttributedString.getAttributedString(fromString: title)
           
           attributedText.apply(font: NSMutableAttributedString.Font.PoppinsMediumItalic.rawValue, size: 16, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), subString: title)
           
           component.attributedText = attributedText
           component.textAlignment = .center
           return component
       }()
    
    //MARK: - ImageView
    var logoImageView : UIImageView = {
        let component = UIImageView(image: UIImage(named: "Testify"))
        component.translatesAutoresizingMaskIntoConstraints = false
        component.contentMode = .scaleAspectFit
        return component
    }()
    
    
    //MARK: - View
    
    var signUPCard : UIView = {
        let component = UIView()
        component.translatesAutoresizingMaskIntoConstraints = false
        component.layer.borderWidth = 1
        component.layer.borderColor = #colorLiteral(red: 0.8901960784, green: 0.9176470588, blue: 0.2823529412, alpha: 1)
        component.isHidden = true
        component.layer.cornerRadius = 25.0
        component.elevate(elevation: 2)
        return component
    }()
    
    var signINCard : UIView = {
        let component = UIView()
        component.translatesAutoresizingMaskIntoConstraints = false
        component.backgroundColor = #colorLiteral(red: 0.1098039216, green: 0.07450980392, blue: 0.4117647059, alpha: 1)
        component.elevate(elevation: 2)
        component.isHidden = true
        component.layer.cornerRadius = 35.0
        return component
    }()
    
    
    //MARK: - Button
    
    
    var signINButton: UIButton = {
        let element = UIButton(frame: .zero)
        element.backgroundColor = UIColor.clear
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    var signUPButton: UIButton = {
        let element = UIButton(frame: .zero)
        element.backgroundColor = UIColor.clear
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
}
