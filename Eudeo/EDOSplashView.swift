//
//  EDOSplashView.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/30/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import UIKit

class EDOSplashView: UIView {
  
  var logoImageView: UIImageView!
  var signUpButton: UIButton!
  var logInButton: UIButton!

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    backgroundColor = UIColor.white
    
    logoImageView = UIImageView();
    logoImageView.contentMode = .scaleAspectFit
    logoImageView.image = UIImage.init(imageLiteralResourceName: "combinedlogo")
    logoImageView.translatesAutoresizingMaskIntoConstraints = false;
    self.addSubview(logoImageView!)
    
    signUpButton = UIButton();
    signUpButton.setTitle("Sign Up", for: .normal)
    signUpButton.backgroundColor = UIColor.darkOrangeColor()
    signUpButton.setTitleColor(UIColor.white, for: .normal)
    signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    signUpButton.layer.cornerRadius = 5
    signUpButton.translatesAutoresizingMaskIntoConstraints = false;
    self.addSubview(signUpButton!)

    logInButton = UIButton();
    logInButton.setTitle("Log In", for: .normal)
    logInButton.backgroundColor = UIColor.lightOrangeColor()
    logInButton.setTitleColor(UIColor.white, for: .normal)
    logInButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    logInButton.layer.cornerRadius = 5
    logInButton.translatesAutoresizingMaskIntoConstraints = false;
    self.addSubview(logInButton!)
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    layoutConstraints()
  }
  
  func layoutConstraints()  {

    logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
    logoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
    logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
    logoImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    
    logInButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -25).isActive = true
    logInButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
    logInButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
    logInButton.heightAnchor.constraint(equalToConstant: 44).isActive = true

    signUpButton.bottomAnchor.constraint(equalTo: logInButton.topAnchor, constant: -25).isActive = true
    signUpButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
    signUpButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
    signUpButton.heightAnchor.constraint(equalToConstant: 44).isActive = true

  }
}
