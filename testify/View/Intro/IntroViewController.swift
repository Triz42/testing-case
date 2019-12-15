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
    
    
    var needToGoLogo : CGPoint  = CGPoint(x: 0, y: 0)
    var needToGoLabel : CGPoint  = CGPoint(x: 0, y: 0)
    
    //MARK: - Configurando a view
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpContentView()
        animateLabelIn()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        navigationController?.isNavigationBarHidden = true
        
        
        components.signINButton.addTarget(self, action: #selector(printSomething), for: .touchDown)
        components.signUPButton.addTarget(self, action: #selector(printSomething), for: .touchDown)
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
    
    override func viewDidLayoutSubviews() {
        
        if needToGoLogo == CGPoint(x: 0.0, y: 0.0) {
            needToGoLogo = components.logoImageView.frame.origin
        }
        if needToGoLabel == CGPoint(x: 0.0, y: 0.0) {
            needToGoLabel = components.forTestersLabel.frame.origin
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        if needToGoLogo != CGPoint(x: 0.0, y: 0.0) {
            DispatchQueue.main.async {
                self.components.logoImageView.frame.origin = self.needToGoLogo
            }
        }
        
        if needToGoLabel != CGPoint(x: 0.0, y: 0.0) {
            DispatchQueue.main.async {
                self.components.forTestersLabel.frame.origin = self.needToGoLabel
            }
        }
    }
    
    
    //MARK: - Funções
    func animateLabelIn() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            UIView.animate(withDuration: 0.5, animations: {
                self.components.signUPCard.frame.origin.y -= 40
                self.components.signINCard.frame.origin.y -= 40
                self.components.forTestersLabel.alpha = 1
            }, completion: {
                (finished: Bool) in
                self.animateUP()
        })
        }
    }
    
    func animateUP() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            UIView.animate(withDuration: 0.5, animations:{
                self.components.logoImageView.frame.origin.y -= 170
                self.components.forTestersLabel.frame.origin.y -= 170
                UIView.animate(withDuration: 0.2) {

                    self.components.signUPCard.isHidden = false
                    self.components.signINCard.isHidden = false
                    self.components.signUPCard.frame.origin.y += 40
                    self.components.signINCard.frame.origin.y += 40
                }
            }, completion: {
                    (finished: Bool) in
                self.needToGoLogo = self.components.logoImageView.frame.origin
                self.needToGoLabel = self.components.forTestersLabel.frame.origin
                
            })
        }
    }
    
    
    //MARK: - Ação de Botão
    
    @objc func printSomething(_ button: UIButton) {
        print("Botão pressionado")
    }
    
    
}

