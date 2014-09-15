//
//  SettingViewController.swift
//  HW2Carousel
//
//  Created by Sophie Tang on 9/14/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var SettingScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        SettingScrollView.contentSize = CGSizeMake(320, 695)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnCancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func OnSignOut(sender: AnyObject) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
