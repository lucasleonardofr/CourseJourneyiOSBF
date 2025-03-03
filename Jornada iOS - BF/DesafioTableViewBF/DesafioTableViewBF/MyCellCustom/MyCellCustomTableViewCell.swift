//
//  MyCellCustomTableViewCell.swift
//  DesafioTableViewBF
//
//  Created by Lucas Leonardo Freitas on 09/06/24.
//

import UIKit

class MyCellCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    static let identifier: String = "MyCellCustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    func setupCell(_ data: Car) {
        label.text = data.brand
        carImageView.image = data.brandImage
    }
}
