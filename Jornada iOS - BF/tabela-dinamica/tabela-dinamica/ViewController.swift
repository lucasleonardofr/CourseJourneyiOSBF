//
//  ViewController.swift
//  tabela-dinamica
//
//  Created by Lucas Leonardo Freitas on 22/02/23.
//

import UIKit

class ViewController: UITableViewController {
    
    let refeicoes = ["Pizza", "Sorvete", "Frango Frito"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let refeicao = refeicoes[indexPath.row]

        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        celula.textLabel?.text = refeicao
        
        return celula
    }
}

