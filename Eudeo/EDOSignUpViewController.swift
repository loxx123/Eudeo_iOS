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
    view = EDOPlaceholderView()
  }
  
  private func contentView()-> EDOPlaceholderView{
    return view as! EDOPlaceholderView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.titles = "Sign Up"    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.clearNavBar = false;

  }
}
