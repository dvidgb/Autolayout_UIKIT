//
//  OnboardingView.swift
//  UIKIT_Autolayout
//
//  Created by David Bueno Castro on 9/6/22.
//

import Foundation
import UIKit

final class OnboardingView: UIView {
    
    private let onboardingingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "Marvel")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Bienvenidos a la app no oficial de Marvel"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var skipOnboardingButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Pulse para continuar"
        config.subtitle = "Onboarding"
        
        let button =  UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubviews()
        configureConstrains()
    }
    
    private func addSubviews() {
        
        [onboardingingImageView, textLabel, skipOnboardingButton].forEach(addSubview)
        
    }
    
    private func configureConstrains() {
        
          NSLayoutConstraint.activate([
              onboardingingImageView.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -32),
              onboardingingImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
              onboardingingImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
              textLabel.bottomAnchor.constraint(equalTo: skipOnboardingButton.topAnchor, constant: -42),
              textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
              textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
              textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
              skipOnboardingButton.centerXAnchor.constraint(equalTo: centerXAnchor),
              skipOnboardingButton.centerYAnchor.constraint(equalTo: centerYAnchor)
          ])
    }

    @objc func showMessage() {
        print("Skip onboarding")
    }
}

