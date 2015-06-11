//
//  ViewController.swift
//  SwiftWithPods
//
//  Created by Muzammil Mohammad on 11/06/15.
//  Copyright (c) 2015 Triffort Technologies Pvt Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        
        var center = CGPointMake(UIScreen.mainScreen().bounds.size.width / 2, 150)
        
        button.frame = CGRectMake(0, 0, 100, 50)
        button.center = center;
        
        button.backgroundColor = UIColor.clearColor()
        button.setTitle("Show Hud", forState: UIControlState.Normal)
        button.addTarget(self, action: "showHudAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button)
    }

    func showHudAction(sender:UIButton!)
    {
        MBProgressHUD.showHUDAddedTo(self.view, animated: true)

        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: Selector("removeHud"), userInfo: nil, repeats: false)
    }
    
    func removeHud ()
    {
        MBProgressHUD.hideAllHUDsForView(self.view, animated:true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

