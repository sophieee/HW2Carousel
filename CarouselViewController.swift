//
//  CarouselViewController.swift
//  HW2Carousel
//
//  Created by Sophie Tang on 9/14/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

import UIKit

class CarouselViewController: UIViewController {

    @IBOutlet weak var FeedScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        FeedScrollView.contentSize = CGSizeMake(320, 1564)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
