//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Greice Felipe on 28/11/21.
//

import UIKit

protocol AdicionarRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController {
    
    var delegate: AdicionarRefeicaoDelegate?

    @IBOutlet weak var nomeTextField: UITextField?
    
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        guard let nome = nomeTextField?.text else { return }
        
        guard let felicidadeRef = felicidadeTextField?.text, let felicidade = Int(felicidadeRef) else { return }
        
        let refeicao = Refeicao(nome: nome, felicidade: felicidade)
        
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)

    }
    
}

