//
//  UIView+Percent.swift
//  testify
//
//  Created by Beatriz Teles Castro on 13/12/19.
//  Copyright © 2019 Beatriz Teles Castro. All rights reserved.
//

import UIKit


extension UIView {
    
    /**
       Com a `percentOfHeight` podemos definir um valor em porcetagem usando como base o tamanho da altura (`height`) de uma tela  ( a do dispositivo em que esta sendo *rodado* a aplicação), isso é para facilitar o posicionamento e a responsividade dos componentes na tela. *PS.:*
           
     Exemplo:
        
       - Parameter percente: Valor do tipo `CGFloat` significa o quanto queremos de porcentagem.
    
       - Returns: A new string saying hello to `recipient`.
    */
    
    func percentOfHeight( percente : CGFloat) -> CGFloat {
        return ((frame.height * percente) / 100)
    }
    
    func percentOfWidth( percente : CGFloat) -> CGFloat {
        return ((frame.width * percente) / 100)
    }
    
}
