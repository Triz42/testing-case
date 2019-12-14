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
       Com a `percentOfHeight` podemos definir um valor em porcetagem usando como base o tamanho da altura (`height`) de uma tela  ( a do dispositivo em que esta sendo *rodado* a aplicação), isso é para facilitar o posicionamento e a responsividade dos componentes na tela. *PS.:* Só por que isto facilita, não significa que deve ser usado sempre. É necessario avaliar o momento certo.
           
     Exemplo:
        
       - Parameter percente: Valor do tipo `CGFloat` correspondente ao quanto queremos de porcentagem da tela.
    
       - Returns: Um valor fo tipo `CGFloat` que é calculado a partir da multiplicação da altura da tela com o valor passado no parametro e por fim é feita uma divisão.
    */
    
    func percentOfHeight( percente : CGFloat) -> CGFloat {
        return ((frame.height * percente) / 100)
    }
    
    func percentOfWidth( percente : CGFloat) -> CGFloat {
        return ((frame.width * percente) / 100)
    }
    
}
