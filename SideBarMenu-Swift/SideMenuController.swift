//
//  SideMenuController.swift
//  SideBarMenu-Swift
//
//  Created by Wim on 8/3/16.
//  Copyright © 2016 Kwikku. All rights reserved.
//

import Foundation
import UIKit

class SideMenuController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let arrayTitle = ["Home", "Profile", "Notifications", "Favorites", "Settings"]
    let arrayIcon = ["ic_home_36pt", "ic_person_36pt", "ic_notifications_36pt", "ic_star_36pt", "ic_settings_36pt"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTitle.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: SideBarCell = tableView.dequeueReusableCellWithIdentifier("SideBarCell") as! SideBarCell
        
        cell.title.text = arrayTitle[indexPath.row]
        cell.icon.image = UIImage(named: arrayIcon[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        switch (indexPath.row) {
        case 0:
            self.performSegueWithIdentifier("home_segue", sender: self)
            break
        case 1:
            self.performSegueWithIdentifier("profile_segue", sender: self)
            break
        case 2:
            self.performSegueWithIdentifier("notifications_segue", sender: self)
            break
        case 3:
            self.performSegueWithIdentifier("favorites_segue", sender: self)
            break
        case 4:
            self.performSegueWithIdentifier("settings_segue", sender: self)
            break
        default:
            break
        }
    }

}

