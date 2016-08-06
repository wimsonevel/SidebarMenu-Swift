//
//  SettingsViewController.swift
//  SideBarMenu-Swift
//
//  Created by Wim on 8/6/16.
//  Copyright © 2016 Kwikku. All rights reserved.
//

import Foundation

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    override func viewDidLoad() {
        setMenuBarBtn(menuBar)
    }
    
    func setMenuBarBtn(menuBar: UIBarButtonItem) {
        menuBar.target = revealViewController()
        menuBar.action = #selector(SWRevealViewController.revealToggle(_:))
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }
}