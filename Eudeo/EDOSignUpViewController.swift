//
//  EDOSignUpViewController.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/30/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import UIKit

class EDOSignUpViewController: EDOViewController {
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    self.clearNavBar = false;
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func loadView() {
    view = EDOSignUpView()
  }
  
  private func contentView()-> EDOSignUpView{
    return view as! EDOSignUpView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.titles = "Sign Up"
    
    self.contentView().nextButton.addTarget(self, action: #selector(doSignUpPressed), for: .touchUpInside)

  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.clearNavBar = false;

  }
  
  @objc func doSignUpPressed () {
    
    guard let firstName = self.contentView().firstNameTextField.text,
        let lastName = self.contentView().lastNameTextField.text,
        let phoneNumber = self.contentView().phoneNumberTextField.text else {
            let alert = UIAlertController(title: "Login Error",
                                          message: "Please fill in all fields",
                                          preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Okay", style: .default)
            
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: {
                
            })
            return
    }
    
    let (pk, pub) = generateRandomKeyPair(enclave: .Secp256k1)
    let fullName = firstName + " " + lastName
    
    EDOEOSUtilities.shared.signup(pubKey: pub!.rawPublicKey(), fullName: fullName, cellPhone: phoneNumber) { (response, error) in
        if let error = error {
            return
        }
        
        
        // TODO: do something
    }
  }
}
