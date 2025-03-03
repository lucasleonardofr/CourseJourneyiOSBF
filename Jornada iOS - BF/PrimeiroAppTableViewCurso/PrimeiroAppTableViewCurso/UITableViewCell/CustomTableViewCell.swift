//
//  CustomTableViewCell.swift
//  PrimeiroAppTableViewCurso
//
//  Created by Lucas Leonardo Freitas on 06/06/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(title: String) {
        titleLabel.text = title
    }
}
