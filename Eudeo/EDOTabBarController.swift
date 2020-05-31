//
//  EDOTabBarController.swift
//  Eudeo
//
//  Created by Leonce Arceneaux on 5/31/20.
//  Copyright © 2020 Leonce Arceneaux. All rights reserved.
//

import UIKit

class EDOTabBarController: UITabBarController {

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    
    self.navigationController?.setNavigationBarHidden(true, animated: false)
    doSetupTabBar()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.white
  }
  
  func doSetupTabBar() {
    let homeViewController = EDOHomeViewController()
    let profileViewController = EDOProfileViewController()

    let nav1 = EDONavigationController(rootViewController: homeViewController)
    let nav2 = EDONavigationController(rootViewController: profileViewController)
    
    self.viewControllers = [nav1, nav2]
    
    let item1 = UITabBarItem(title: "", image: UIImage.init(imageLiteralResourceName: "home"), tag: 1)
    let item2 = UITabBarItem(title: "", image: UIImage.init(imageLiteralResourceName: "profile"), tag: 1)
    
    item1.selectedImage = UIImage.init(imageLiteralResourceName: "home").withRenderingMode(.alwaysOriginal)
    item2.selectedImage = UIImage.init(imageLiteralResourceName: "profile").withRenderingMode(.alwaysOriginal)

    nav1.tabBarItem = item1
    nav2.tabBarItem = item2

    self.tabBar.barTintColor = UIColor.white
    self.navigationController?.setNavigationBarHidden(true, animated: false)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.navigationController?.setNavigationBarHidden(true, animated: true)
    for item in self.viewControllers! {
      item.tabBarItem.title = ""
    }
  }
  
  override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return self.selectedViewController!.supportedInterfaceOrientations
  }
  
  override var shouldAutorotate: Bool {
    return self.selectedViewController!.shouldAutorotate
  }
  
  override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
    return self.selectedViewController!.preferredInterfaceOrientationForPresentation
  }
  
  override var preferredStatusBarStyle: UIStatusBarStyle {
    return self.selectedViewController!.preferredStatusBarStyle
  }
}

