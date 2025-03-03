//
//  ViewController.swift
//  tabela-refeicoes
//
//  Created by Lucas Leonardo Freitas on 22/02/23.
//

import UIKit

class ViewController: UITableViewController {
    
    let refeicoes = ["Churros", "Macarrao", "Pizza"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection
//                            section: Int) -> Int {
//        let teste = refeicoes.count
//        return teste
//    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return refeicoes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)

        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao

        return celula
    }

}

