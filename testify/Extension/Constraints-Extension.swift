//
//  Constraints-Extension.swift
//  testify
//
//  Created by Beatriz Teles Castro on 14/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit


extension UIView {
    
    /**
     A `center` alinha o elemento que aciona a função ao eixo X e Y do elemento passado como parametro.
     */
    func center(inView view: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    /**
    A `centerY` alinha o elemento que aciona a função ao Y do elemento passado como parametro.
    */
    func centerY(inView view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
    /**
    A `centerYConstant` alinha o elemento que aciona a função ao Y do elemento passado como parametro, com um valor constant, uma possivel variação de distancia que pode ser aplicada.
     
     - Parameter view: Elemento do tipo `UIView` que será usando como referencia. Todos os elementos do UIKit herdam de um elemento do tipo `UIView`, então é possivel usar um `Button` ou até um `TextField``como referencia.
     - Parameter constant: Valor do tipo `CGFloat` correspondente ao quanto queremos de distancia que o elemento pode ultrapassar alem do eixo Y.
    */
    func centerYConstant(inView view: UIView, constant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant).isActive = true
    }
    
    
    /**
    A `centerX` alinha o elemento que aciona a função ao X do elemento passado como parametro.
    */
    func centerX(inView view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    /**
    A `centerXConstant` alinha o elemento que aciona a função ao X do elemento passado como parametro, com um valor constant, uma possivel variação de distancia que pode ser aplicada.
     
     - Parameter view: Elemento do tipo `UIView` que será usando como referencia. Todos os elementos do UIKit herdam de um elemento do tipo `UIView`, então é possivel usar um `Button` ou até um `TextField``como referencia.
     - Parameter constant: Valor do tipo `CGFloat` correspondente ao quanto queremos de distancia que o elemento pode ultrapassar alem do eixo X.
    */
    func centerXConstant(inView view: UIView, constant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: constant).isActive = true
    }
    
    
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat, trailling: NSLayoutXAxisAnchor?, leading: NSLayoutXAxisAnchor?){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top{
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left{
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom{
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right = right{
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if let trailling = trailling {
            self.trailingAnchor.constraint(equalTo: trailling, constant: paddingRight).isActive = true
        }
        
        if let leading = leading {
            self.leadingAnchor.constraint(equalTo: leading, constant: paddingLeft).isActive = true
        }
        
        if width != 0{
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0{
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    
    func size(width: CGFloat, height: CGFloat){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if width != 0{
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0{
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
