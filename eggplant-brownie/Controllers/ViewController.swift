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

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // MARK: - Atributos
    
    var delegate: AdicionarRefeicaoDelegate?
    var itens: [Item] = [Item(nome: "Molho de tomate", calorias: 40.0),
                         Item(nome:  "Queijo", calorias: 40.0),
                         Item(nome: "Molho apimentado", calorias: 40.0),
                         Item(nome: "Manjericão", calorias: 40.0),]
    var itensSelecionados: [Item] = []
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var nomeTextField: UITextField?
    
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let linha = indexPath.row
        let item = itens[linha]
        
        celula.textLabel?.text = item.nome
        
        return celula
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let celula = tableView.cellForRow(at: indexPath) else { return }
        
        if celula.accessoryType == .none {
            celula.accessoryType = .checkmark
            let linha = indexPath.row
            itensSelecionados.append(itens[linha])
        } else {
            celula.accessoryType = .none
            let item = itens[indexPath.row]
            if let position = itensSelecionados.firstIndex(of: item) {
                itensSelecionados.remove(at: position)
            }
        }
        
    }
    
    // MARK: - IBAction
    
    @IBAction func adicionar(_ sender: Any) {
        guard let nome = nomeTextField?.text else { return }
        
        guard let felicidadeRef = felicidadeTextField?.text, let felicidade = Int(felicidadeRef) else { return }
        
        let refeicao = Refeicao(nome: nome, felicidade: felicidade, itens: itensSelecionados)
                
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)

    }
    
}

