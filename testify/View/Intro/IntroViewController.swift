//
//  IntroViewController.swift
//  testify
//
//  Created by Beatriz Teles Castro on 09/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, CAAnimationDelegate, UIGestureRecognizerDelegate {

    //MARK: - Variavel
    
    private var components : IntroComponents!
    private var contentScreen : IntroScreen!
    
    //MARK: - Configurando a view
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpContentView()
        
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        navigationController?.isNavigationBarHidden = true
    }

    private func setUpContentView() {
        
        components = IntroComponents()
        contentScreen = IntroScreen(components: components, frame: view.frame)
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
    
    private func setUpNavController() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
}

