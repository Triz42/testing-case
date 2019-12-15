//
//  NSMutableAttributedString.swift
//  testify
//
//  Created by Beatriz Teles Castro on 15/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import Foundation
import UIKit
extension NSMutableAttributedString {
    
    class func getAttributedString(fromString string: String) -> NSMutableAttributedString {
        return NSMutableAttributedString(string: string)
    }
    
    func apply(attribute: [NSAttributedString.Key: Any], subString: String)  {
        if let range = self.string.range(of: subString) {
            self.apply(attribute: attribute, onRange: NSRange(range, in: self.string))
        }
    }
    
    func apply(attribute: [NSAttributedString.Key: Any], onRange range: NSRange) {
        if range.location != NSNotFound {
            self.setAttributes(attribute, range: range)
        }
    }
    
    // Apply color on substring
    func apply(color: UIColor, subString: String) {
      
      if let range = self.string.range(of: subString) {
        self.apply(color: color, onRange: NSRange(range, in:self.string))
      }
    }
    
    // Apply color on given range
    func apply(color: UIColor, onRange: NSRange) {
      self.addAttributes([NSAttributedString.Key.foregroundColor: color],
                         range: onRange)
    }
    
    // Apply font on substring
    //1
    func apply(font: UIFont, subString: String)  {
      
      if let range = self.string.range(of: subString) {
        self.apply(font: font, onRange: NSRange(range, in: self.string))
      }
    }
    
    // Apply font on given range
    //2
    func apply(font: UIFont, onRange: NSRange) {
      self.addAttributes([NSAttributedString.Key.font: font], range: onRange)
    }
    
    // Apply color and font on substring
    func apply(font: String, size: CGFloat, color: UIColor, subString: String)  {
      
      if let range = self.string.range(of: subString) {
        self.apply(font: font, size: size, color: color, onRange: NSRange(range, in: self.string))
      }
    }
    // Apply color and font on range
    func apply(font: String, size: CGFloat, color: UIColor, onRange: NSRange) {
        
        guard let poppins = UIFont(name: font, size: size) else {
            fatalError("""
                Failed to load the "\(font)" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
            """)
        }
        
        self.addAttributes([NSAttributedString.Key.font: poppins], range: onRange)
        self.addAttributes([NSAttributedString.Key.foregroundColor: color],
                           range: onRange)
    }
    
    // Underline string
    func underLine(subString: String) {
      if let range = self.string.range(of: subString) {
        self.underLine(onRange: NSRange(range, in: self.string))
      }
    }
    
    // Underline string on given range
    func underLine(onRange: NSRange) {
      self.addAttributes([NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue],
                         range: onRange)
    }
    
    // Apply Strikethrough on substring
    //1
    func strikeThrough(thickness: Int, subString: String)  {
      if let range = self.string.range(of: subString) {
        self.strikeThrough(thickness: thickness, onRange: NSRange(range, in: self.string))
      }
    }
    
    // Apply Strikethrough on given range
    //2
    func strikeThrough(thickness: Int, onRange: NSRange)  {
      
      self.addAttributes([NSAttributedString.Key.strikethroughStyle : NSUnderlineStyle.thick.rawValue],
                         range: onRange)
    }

    // Apply stroke on substring
    //3
    func applyStroke(color: UIColor, thickness: Int, subString: String) {
      if let range = self.string.range(of: subString) {
        self.applyStroke(color: color, thickness: thickness, onRange: NSRange(range, in: self.string))
      }
    }
    
    // Apply stroke on give range
    //4
    func applyStroke(color: UIColor, thickness: Int, onRange: NSRange) {
      self.addAttributes([NSAttributedString.Key.strokeColor : color],
                         range: onRange)
      self.addAttributes([NSAttributedString.Key.strokeWidth : thickness],
                         range: onRange)
    }
    
    // Apply shadow color on substring
    //1
    func applyShadow(shadowColor: UIColor, shadowWidth: CGFloat,
                     shadowHeigt: CGFloat, shadowRadius: CGFloat,
                     subString: String) {
      if let range = self.string.range(of: subString) {
        self.applyShadow(shadowColor: shadowColor, shadowWidth: shadowWidth,
                         shadowHeigt: shadowHeigt, shadowRadius: shadowRadius,
                         onRange: NSRange(range, in: self.string))
        
      }
    }
    
    // Apply shadow color on given range
    //2
    func applyShadow(shadowColor: UIColor, shadowWidth: CGFloat,
                     shadowHeigt: CGFloat, shadowRadius: CGFloat,
                     onRange: NSRange) {
      let shadow = NSShadow()
      shadow.shadowOffset = CGSize(width: shadowWidth, height: shadowHeigt)
      shadow.shadowColor = shadowColor
      shadow.shadowBlurRadius = shadowRadius
      self.addAttributes([NSAttributedString.Key.shadow : shadow], range: onRange)
    }
    
    enum Font: String {
        case Poppins = "Poppins-Regular"
        case PoppinsMedium = "Poppins-Medium"
        case PoppinsLight = "Poppins-Light"
        case PoppinsExtraLight = "Poppins-ExtraLight"
        case PoppinsThinItalic = "Poppins-ThinItalic"
        case PoppinsExtraLightItalic = "Poppins-ExtraLightItalic"
        case PoppinsSemiBold = "Poppins-SemiBold"
        case PoppinsBoldItalic = "Poppins-BoldItalic"
        case PoppinsExtraBoldItalic = "Poppins-ExtraBoldItalic"
        case PoppinsExtraBold = "Poppins-ExtraBold"
        case PoppinsBlackItalic = "Poppins-BlackItalic"
        case PoppinsLightItalic = "Poppins-LightItalic"
        case PoppinsBold = "Poppins-Bold"
        case PoppinsBlack = "Poppins-Black"
        case PoppinsThin = "Poppins-Thin"
        case PoppinsItalic = "Poppins-Italic"
        case PoppinsMediumItalic = "Poppins-MediumItalic"
    }
}

