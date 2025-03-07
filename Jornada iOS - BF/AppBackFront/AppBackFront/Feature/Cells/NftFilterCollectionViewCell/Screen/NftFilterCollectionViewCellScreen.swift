//
//  NftFilterCollectionViewCellScreen.swift
//  AppBackFront
//
//  Created by Lucas Leonardo Freitas on 14/11/24.
//

import UIKit

class NftFilterCollectionViewCellScreen: UIView {
    
    lazy var filterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1)
        label.textAlignment = .center
        label.clipsToBounds = true
        label.layer.cornerRadius = 18
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        addSubview(filterLabel)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            filterLabel.topAnchor.constraint(equalTo: topAnchor),
            filterLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            filterLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            filterLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
