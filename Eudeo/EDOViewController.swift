//
//  EDOViewController.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/30/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import UIKit

class EDOViewController: UIViewController {
  
  var clearNavBar: Bool!
  var darkTintColor: UIColor!
  var tintColor: UIColor!
  var titles: NSString! {
    didSet {
      let titleLabel = UILabel()
      titleLabel.attributedText = NSAttributedString(string: titles! as String, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17, weight: .heavy),
                                                                                             NSAttributedString.Key.foregroundColor: UIColor.black])
      titleLabel.sizeToFit()
      self.navigationItem.titleView = titleLabel
    }
  }

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    self.clearNavBar = false
    self.darkTintColor = UIColor.lightOrangeColor()
    self.tintColor = UIColor.white
    self.titles = ""
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:.default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
    self.navigationController?.navigationBar.isTranslucent = self.clearNavBar!
    self.navigationController?.navigationBar.layer.shadowRadius = 0
    
    self.navigationController?.navigationBar.layer.shadowOpacity = 0
    self.navigationController?.navigationBar.layer.shadowOffset = CGSize.zero;
    
    self.navigationController?.navigationBar.tintColor = self.tintColor;
    self.navigationController?.navigationBar.barTintColor = self.darkTintColor;
    
  }

}
