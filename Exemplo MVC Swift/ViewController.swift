//
//  ViewController.swift
//  Exemplo MVC Swift
//
//  Created by Perfil on 26/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var altura: UITextField!
    @IBOutlet weak var imc: UITextField!
    var pessoa = DadosPessoa();

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func CalcularIMC(_ sender: Any){
        pessoa.nome = nome.text
        pessoa.peso = Float(peso.text!)
        pessoa.altura = Float(altura.text!)
        imc.text =  "\(pessoa.Calculo2())"
    }
    
}

