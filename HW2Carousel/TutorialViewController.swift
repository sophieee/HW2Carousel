//
//  TutorialViewController.swift
//  HW2Carousel
//
//  Created by Sophie Tang on 9/14/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var TutorialScrollView: UIScrollView!
    @IBOutlet weak var SpinButton: UIImageView!
    @IBOutlet weak var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("load")
        TutorialScrollView.delegate = self

        // Do any additional setup after loading the view.
        TutorialScrollView.contentSize = CGSizeMake(1280, 568)
        SpinButton.alpha = 0
        Button.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(TutorialScrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(TutorialScrollView.contentOffset.x / 320))
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        NSLog("%d", page)
        if(page == 3){
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                self.SpinButton.alpha = 1
            })
        }
        Button.enabled = true
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigatio
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
