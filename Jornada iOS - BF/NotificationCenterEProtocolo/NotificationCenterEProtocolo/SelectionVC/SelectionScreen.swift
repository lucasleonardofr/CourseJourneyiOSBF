//
//  SelectionScreen.swift
//  NotificationCenterEProtocolo
//
//  Created by Lucas Leonardo Freitas on 31/08/24.
//

import UIKit

protocol SelectionScreenProtocol:  AnyObject {
    func tappedMacbookButton()
    func tappedImacButton()
}

class SelectionScreen: UIView {
    
    private weak var delegate: SelectionScreenProtocol?
    
    public func delegate(delegate: SelectionScreenProtocol) {
        self.delegate = delegate
    }
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .yellow
        label.textAlignment = .center
        label.text = "Opções"
        label.font = UIFont.boldSystemFont(ofSize: 34)
        return label
    }()
    
    lazy var macbookButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Macbook")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(tappedMacbookButton), for: .touchUpInside)
        return button
    }()
    
    lazy var imacButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Imac")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(tappedImacButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedMacbookButton(_ sender: UIButton) {
        delegate?.tappedMacbookButton()
    }
    
    @objc func tappedImacButton(_ sender: UIButton) {
        delegate?.tappedImacButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(descriptionLabel)
        addSubview(macbookButton)
        addSubview(imacButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            macbookButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 60),
            macbookButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            macbookButton.heightAnchor.constraint(equalToConstant: 150),
            macbookButton.widthAnchor.constraint(equalToConstant: 230),
            
            imacButton.topAnchor.constraint(equalTo: macbookButton.bottomAnchor, constant: 40),
            imacButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            imacButton.heightAnchor.constraint(equalTo: macbookButton.heightAnchor),
            imacButton.widthAnchor.constraint(equalTo: macbookButton.widthAnchor),
            
        ])
    }
}
