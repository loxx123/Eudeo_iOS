//
//  EDOSplashViewController.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/30/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import UIKit

class EDOSplashViewController: EDOViewController {

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    self.clearNavBar = true
    self.navigationItem.setHidesBackButton(true, animated: true)

  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func loadView() {
    view = EDOSplashView()
  }
  
  private func contentView()-> EDOSplashView {
    return view as! EDOSplashView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.contentView().signUpButton.addTarget(self, action: #selector(doShowSignUp), for: .touchUpInside)
    self.contentView().logInButton.addTarget(self, action: #selector(doShowLogIn), for: .touchUpInside)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.clearNavBar = true
    self.navigationItem.setHidesBackButton(true, animated: true)
  }
  
  @objc func doShowSignUp () {
    let pvc = EDOSignUpViewController()
    self.navigationController?.pushViewController(pvc, animated: true)
  }
  
  @objc func doShowLogIn () {
    let pvc = EDOLogInViewController()
    self.navigationController?.pushViewController(pvc, animated: true)
  }
}
