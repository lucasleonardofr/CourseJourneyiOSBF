//
//  CustomTableViewCell.swift
//  DesafioTabBarCursoBF
//
//  Created by Lucas Leonardo Freitas on 22/06/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    public func setupCell(profile: Profile){
        userImageView.image = profile.photo
        nameLabel.text = profile.name
    }
}
