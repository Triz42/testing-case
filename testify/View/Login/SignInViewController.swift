//
//  SignInViewController.swift
//  testify
//
//  Created by Beatriz Teles Castro on 15/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, CAAnimationDelegate, UIGestureRecognizerDelegate {
    
    //MARK: - Variavel
    
    private var components : SignInComponents!
    private var contentScreen : SignInScreen!
    
    
    //MARK: - Configurando a view
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpContentView()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        navigationController?.isNavigationBarHidden = true
        
    }
    
    private func setUpContentView() {
        
        components = SignInComponents()
        contentScreen = SignInScreen(components: components, frame: view.frame)
        view.addSubview(contentScreen)
        contentScreen.translatesAutoresizingMaskIntoConstraints = false
        
        var initialConstraints = [NSLayoutConstraint]()
        initialConstraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[v0]-0-|",
                                                             options: NSLayoutConstraint.FormatOptions(),
                                                             metrics: nil,
                                                             views: ["v0" : contentScreen!])
        
        initialConstraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[v0]-0-|",
                                                             options: NSLayoutConstraint.FormatOptions(),
                                                             metrics: nil,
                                                             views: ["v0" : contentScreen!])
        
        NSLayoutConstraint.activate(initialConstraints)
        
    }
    
    override func viewDidLayoutSubviews() {
        
        components.userTextField.addLeftBorderWithColor(color: UIColor.lightGray, width: 2)
    }
}

extension UIView {
    func addTopBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x:0,y: 0, width:self.frame.size.width, height:width)
        self.layer.addSublayer(border)
    }
    
    func addRightBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: self.frame.size.width - width,y: 0, width:width, height:self.frame.size.height)
        self.layer.addSublayer(border)
    }
    
    func addBottomBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x:0, y:self.frame.size.height - width, width:self.frame.size.width, height:width)
        self.layer.addSublayer(border)
    }
    
    func addLeftBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x:0, y:0, width:width, height:self.frame.size.height)
        self.layer.addSublayer(border)
    }
}
