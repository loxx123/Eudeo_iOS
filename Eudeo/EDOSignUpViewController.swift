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
    
    #warning("Jacob, replace this method with networking")
    
    let otherAlert = UIAlertController(title: "Coming Soon",
                                       message: "If this action is successful, the user will be signed up and then move to the tabbarcontroller.",
                                       preferredStyle: .alert)
    
    let printSomething = UIAlertAction(title: "Okay", style: .default) { _ in
      
    }
    
    otherAlert.addAction(printSomething)
    
    present(otherAlert, animated: true, completion: {
      
    })
  }
}
