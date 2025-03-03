//
//  HomeView.swift
//  ScroolViewBFAoVivo
//
//  Created by Lucas Leonardo Freitas on 08/06/24.
//

import UIKit

class HomeView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:")
    }
    
    lazy var homeScroollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.alwaysBounceVertical = true
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = .systemBackground
        return scrollView
    }()
    
    lazy var contentView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBackground
        return view
    }()
    
    lazy var homeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 20
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        
        
        return stackView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.textAlignment =  .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.text = "Apredendo ScrollView na live da BFF"
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .secondaryLabel
        label.textAlignment =  .left
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.text = "Essa é uma demonstração do uso da ScrollView com StackView"
        return label
    }()
    
    lazy var logoImagem: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "lucas"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    
    lazy var primarySection: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .secondarySystemBackground
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        return view
    }()
    func setUpView() {
        addSubview(homeScroollView)
        homeScroollView.addSubview(contentView)
        contentView.addSubview(homeStackView)
        
        //Ordem de itens na stackView
        homeStackView.addArrangedSubview(titleLabel)
        homeStackView.addArrangedSubview(descriptionLabel)
        homeStackView.addArrangedSubview(logoImagem)
        homeStackView.addArrangedSubview(primarySection)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            homeScroollView.topAnchor.constraint(equalTo: topAnchor),
            homeScroollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            homeScroollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            homeScroollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: homeScroollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: homeScroollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: homeScroollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: homeScroollView.bottomAnchor),
            
            //Se a scrollView for vertical a contentView deve ter a largura a view principal.
            contentView.widthAnchor.constraint(equalTo: widthAnchor),
            //Se a scrollView for horizontal a contentView deve ter a altura da view principal
            //contentView.heightAnchor.constraint(equalTo: heightAnchor)
            
            homeStackView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 20),
            homeStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            homeStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            homeStackView.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -20),
           
            primarySection.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
}
