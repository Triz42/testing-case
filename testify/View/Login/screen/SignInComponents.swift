//
//  SignInComponents.swift
//  testify
//
//  Created by Beatriz Teles Castro on 15/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit
class SignInComponents {
    
    //MARK: - Background
    var bgGradientLayer : CAGradientLayer = {
        let bg = CAGradientLayer()
        bg.backgroundColor = UIColor.background_app.cgColor
        return bg
    }()
    
    // MARK: - View
    
    var cardView : UIView = {
        let card = UIView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor.white
        card.clipsToBounds = true
        return card
    }()
    
    // MARK: - Label
    var forTestersLabel: UILabel = {
        let component = UILabel()
        component.translatesAutoresizingMaskIntoConstraints = false
        component.numberOfLines = -1
        
        let title = "A plataforma ideal para testers."
        
        let attributedText = NSMutableAttributedString.getAttributedString(fromString: title)
        
        attributedText.apply(font: NSMutableAttributedString.Font.PoppinsLight.rawValue, size: 20, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), subString: title)
        
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
    
    // MARK: - TEXTFIELD
    
    var userTextField: CustomTextField = {
        let component = CustomTextField()
        component.translatesAutoresizingMaskIntoConstraints = false
        
        
        guard let poppinsLight = UIFont(name: "Poppins-Light", size: 16) else {
            fatalError("""
                Failed to load the "gotham_medium" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
            """)        }
        
        component.attributedPlaceholder = NSAttributedString (string: NSLocalizedString("Digite seu nome de usuário", comment: ""), attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray, NSAttributedString.Key.font: poppinsLight])
        component.font = poppinsLight
        component.autocapitalizationType = UITextAutocapitalizationType.none
        component.autocorrectionType = .no
        component.keyboardType = .numberPad
        component.layer.borderWidth = 1
        component.layer.borderColor = UIColor.lightText.cgColor
        return component
    }()
    
}
