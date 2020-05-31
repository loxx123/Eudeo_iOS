//
//  EDOLogInView.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/30/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import UIKit

class EDOLogInView: UIView {

  var firstNameTextField: EDOTextField!
  var lastNameTextField: EDOTextField!
  var phoneNumberTextField: EDOTextField!
  var nextButton: UIButton!

  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor.white
    
    let insets = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)

    phoneNumberTextField = EDOTextField();
    phoneNumberTextField.insets = insets
    phoneNumberTextField.placeholder = "Phone Number"
    phoneNumberTextField.backgroundColor = UIColor.init(white: 0.93, alpha: 1)
    phoneNumberTextField.textColor = UIColor.black
    phoneNumberTextField.layer.cornerRadius = 5
    phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false;
    self.addSubview(phoneNumberTextField!)
    
    nextButton = UIButton();
    nextButton.setTitle("Log In", for: .normal)
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

    phoneNumberTextField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 25).isActive = true
    phoneNumberTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
    phoneNumberTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
    phoneNumberTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
    
    nextButton.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 25).isActive = true
    nextButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25).isActive = true
    nextButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25).isActive = true
    nextButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
  }
}
