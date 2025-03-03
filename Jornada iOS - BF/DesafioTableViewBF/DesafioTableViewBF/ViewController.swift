//
//  ViewController.swift
//  DesafioTableViewBF
//
//  Created by Lucas Leonardo Freitas on 09/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var listCar: [Car] = [Car(brand: "Fiat", brandImage: UIImage(named: "fiat") ?? UIImage()),
                          Car(brand: "Honda", brandImage: UIImage(named: "Honda") ?? UIImage()),
                          Car(brand: "Renault", brandImage: UIImage(named: "renault") ?? UIImage()),
                          Car(brand: "BMW", brandImage: UIImage(named: "bmw") ?? UIImage()),
                          Car(brand: "Audi", brandImage: UIImage(named: "audi") ?? UIImage())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }
    
    func configTableView () {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MyCellCustomTableViewCell.nib(), forCellReuseIdentifier: MyCellCustomTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyCellCustomTableViewCell.identifier, for: indexPath) as? MyCellCustomTableViewCell
        cell?.setupCell(listCar[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return print("Foi selecionado a opçao: \(listCar[indexPath.row].brand)")
    }
}
