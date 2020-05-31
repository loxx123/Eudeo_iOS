//
//  EDOTextField.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/31/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import UIKit

class EDOTextField: UITextField {

  let insets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
  
  override open func textRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.inset(by: insets)
    
  }
  
  override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.inset(by: insets)
  }
  
  override open func editingRect(forBounds bounds: CGRect) -> CGRect {
    return bounds.inset(by: insets)
  }

}
