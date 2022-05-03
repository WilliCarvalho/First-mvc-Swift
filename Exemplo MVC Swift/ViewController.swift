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
    @IBOutlet weak var userMsg: UILabel!
    
    var pessoa = DadosPessoa();

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func CalcularIMC(_ sender: Any){
        pessoa.nome = nome.text
        pessoa.peso = Float(peso.text!)
        pessoa.altura = Float(altura.text!)
        
        if(peso.text == ""){
            userMsg.text = "Digite algum valor para o peso"
        }
        else if(altura.text == ""){
            userMsg.text = "Digite algum valor para a altura"
        }
        else if(imc.text != ""){
            userMsg.text = "não digite nada neste campo"
        }
        else if(peso.text != "" && altura.text != "" && imc.text == ""){
            //formatação utilizando a função que atribui valor a variável IMC
            //pessoa.Calculo()
            //imc.text = String(format: "%.2f", pessoa.imc)
            //Formatação utilizando a função que retorna um float (utiliza apenas uma linha)
            imc.text = String(format: "%.2f", pessoa.Calculo2())
        }
        
        
    }
    
}

