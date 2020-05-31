//
//  EDOSignUpView.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/30/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import UIKit

class EDOSignUpView: UIView {
  
  var firstNameTextField: EDOTextField!
  var lastNameTextField: EDOTextField!
  var phoneNumberTextField: EDOTextField!
  var nextButton: UIButton!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor.white
    
    let insets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    
    firstNameTextField = EDOTextField();
    firstNameTextField.insets = insets
    firstNameTextField.placeholder = "First Name"
    firstNameTextField.backgroundColor = UIColor.init(white: 0.93, alpha: 1)
    firstNameTextField.textColor = UIColor.black
    firstNameTextField.layer.cornerRadius = 5
    firstNameTextField.translatesAutoresizingMaskIntoConstraints = false;
    self.addSubview(firstNameTextField!)
    
    lastNameTextField = EDOTextField()
    lastNameTextField.insets = insets
    lastNameTextField.placeholder = "Last Name"
    lastNameTextField.backgroundColor = UIColor.init(white: 0.93, alpha: 1)
    lastNameTextField.textColor = UIColor.black
    lastNameTextField.layer.cornerRadius = 5
    lastNameTextField.translatesAutoresizingMaskIntoConstraints = false;
    self.addSubview(lastNameTextField!)
    
    phoneNumberTextField = EDOTextField();
    phoneNumberTextField.insets = insets
    phoneNumberTextField.placeholder = "Phone Number"
    phoneNumberTextField.backgroundColor = UIColor.init(white: 0.93, alpha: 1)
    phoneNumberTextField.textColor = UIColor.black
    phoneNumberTextField.layer.cornerRadius = 5
    phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false;
    self.addSubview(phoneNumberTextField!)
    
    nextButton = UIButton();
    nextButton.setTitle("Sign Up", for: .normal)
    nextButton.backgroundColor = UIColor.lightOrangeColor()
    nextButton.setTitleColor(UIColor.white, for: .normal)
    nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    nextButton.layer.cornerRadius = 5
    nextButton.translatesAutoresizingMaskIntoConstraints = false;
    self.addSubview(nextButton!)
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    layoutConstraints()
  }
  
  func layoutConstraints()  {
    
    firstNameTextField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
    firstNameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
    firstNameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
    firstNameTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    
    lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 25).isActive = true
    lastNameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
    lastNameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
    lastNameTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    
    phoneNumberTextField.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 25).isActive = true
    phoneNumberTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
    phoneNumberTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
    phoneNumberTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    
    nextButton.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 25).isActive = true
    nextButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
    nextButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
    nextButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
  }
}
