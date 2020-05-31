//
//  EDOColor.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/31/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//


import UIKit

var darkOrangeColor: UIColor!
var lightOrangeColor: UIColor!

public extension UIColor {
  
  static func darkOrangeColor()-> UIColor {
    return UIColor.init(red: 223.0/255.0, green: 89.0/255.0, blue: 34.0/255.0, alpha: 1)
  }
  
  static func lightOrangeColor()-> UIColor {
    return UIColor.init(red: 235.0/255.0, green: 171.0/255.0, blue: 66.0/255.0, alpha: 1)
  }
}
