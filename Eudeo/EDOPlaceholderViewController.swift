//
//  ViewController.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/30/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import UIKit

class EDOPlaceholderViewController: EDOViewController {
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
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
    
    self.title = "adf"
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }
}
