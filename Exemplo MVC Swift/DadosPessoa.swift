//
//  DadosPessoa.swift
//  Exemplo MVC Swift
//
//  Created by Perfil on 26/04/22.
//

import Foundation

class DadosPessoa {
    var nome: String!
    var altura: Float!
    var peso: Float!
    var imc: Float!
    
    func Calculo(){
        imc = peso / (altura*altura)
    }
    
    func Calculo2() -> Float{
        return peso / (altura*altura)
    }
}
