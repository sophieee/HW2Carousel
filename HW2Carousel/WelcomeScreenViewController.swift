//
//  WelcomeScreenViewController.swift
//  HW2Carousel
//
//  Created by Sophie Tang on 9/14/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

import UIKit

class WelcomeScreenViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var IntroScrollView: UIScrollView!
    @IBOutlet weak var IntroImage: UIImageView!
    @IBOutlet weak var tile1: UIImageView!
    @IBOutlet weak var tile2: UIImageView!
    @IBOutlet weak var tile3: UIImageView!
    @IBOutlet weak var tile4: UIImageView!
    @IBOutlet weak var tile5: UIImageView!
    @IBOutlet weak var tile6: UIImageView!
    
    var yOffsets : [Float] = [-285, -260, -435, -408, -510, -500]
    var xOffsets : [Float] = [-70, 45, 10, 90, -110, -90]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        IntroScrollView.contentSize = CGSizeMake(320, 1136)
        IntroScrollView.delegate = self
        
        println("y1 offset: \(yOffsets[0])")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(IntroScrollView: UIScrollView!){
        var offset = Float(IntroScrollView.contentOffset.y)
        
        println("content offset: \(IntroScrollView.contentOffset.y)")
        
        //content offset: 0->568
        //x offset: -30->0
        //y offset: -285->0

        var tx1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[0], r2Max: 0)
        var ty1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[0], r2Max: 0)
        var s1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[0], r2Max: 1)
        var r1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[0], r2Max: 0)
        
        tile1.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        tile1.transform = CGAffineTransformScale(tile1.transform, CGFloat(s1), CGFloat(s1))
        tile1.transform = CGAffineTransformRotate(tile1.transform, CGFloat(Double(r1) * M_PI / 180))
        
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[1], r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[1], r2Max: 0)
        var s2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[1], r2Max: 1)
        var r2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[1], r2Max: 0)
        
        tile2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        tile2.transform = CGAffineTransformScale(tile2.transform, CGFloat(s2), CGFloat(s2))
        tile2.transform = CGAffineTransformRotate(tile2.transform, CGFloat(Double(r2) * M_PI / 180))
        
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[2], r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[2], r2Max: 0)
        var s3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[2], r2Max: 1)
        var r3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[2], r2Max: 0)
        
        tile3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        tile3.transform = CGAffineTransformScale(tile3.transform, CGFloat(s3), CGFloat(s3))
        tile3.transform = CGAffineTransformRotate(tile3.transform, CGFloat(Double(r3) * M_PI / 180))
        
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[3], r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[3], r2Max: 0)
        var s4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[3], r2Max: 1)
        var r4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[3], r2Max: 0)
        
        tile4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        tile4.transform = CGAffineTransformScale(tile4.transform, CGFloat(s4), CGFloat(s4))
        tile4.transform = CGAffineTransformRotate(tile4.transform, CGFloat(Double(r4) * M_PI / 180))
        
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[4], r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[4], r2Max: 0)
        var s5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[4], r2Max: 1)
        var r5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[4], r2Max: 0)
        
        tile5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        tile5.transform = CGAffineTransformScale(tile5.transform, CGFloat(s5), CGFloat(s5))
        tile5.transform = CGAffineTransformRotate(tile5.transform, CGFloat(Double(r5) * M_PI / 180))
        
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[5], r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[5], r2Max: 0)
        var s6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[5], r2Max: 1)
        var r6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[5], r2Max: 0)
        
        tile6.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        tile6.transform = CGAffineTransformScale(tile6.transform, CGFloat(s6), CGFloat(s6))
        tile6.transform = CGAffineTransformRotate(tile6.transform, CGFloat(Double(r6) * M_PI / 180))
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
