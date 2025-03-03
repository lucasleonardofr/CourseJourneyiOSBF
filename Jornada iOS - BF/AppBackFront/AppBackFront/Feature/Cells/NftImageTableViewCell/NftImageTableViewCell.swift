//
//  NftImageTableViewCell.swift
//  AppBackFront
//
//  Created by Lucas Leonardo Freitas on 14/11/24.
//

import UIKit
import AlamofireImage

class NftImageTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: NftImageTableViewCell.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        configConstraints()
    }
    
    private lazy var screen: NftImageTableViewCellScreen = {
        let view = NftImageTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        contentView.addSubview(screen)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    public func setupCell(urlImage: String, delegate: NftImageTableViewCellScreenDelegate) {
      if let url: URL = URL(string: urlImage) {
          screen.nftImageView.af.setImage(withURL: url)
      }
        screen.setDelegate(delegate: delegate)
    }
}
