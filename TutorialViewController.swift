//
//  TutorialViewController.swift
//  carousel2
//
//  Created by Kevin O'Connell on 9/24/15.
//  Copyright © 2015 Kevin O'Connell. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var ScrollTutorial: UIScrollView!
    
    @IBOutlet weak var Pagination: UIPageControl!
    
    @IBOutlet weak var ImgBackupTakeSpin: UIImageView!
    
    @IBOutlet weak var Lightswitch: UISwitch!
    
    @IBOutlet weak var BtnTakeSpin: UIButton!
    
    @IBAction func BtnTakeSpin(sender: UIButton) {
        // ImgBackupTakeSpin.alpha = 1
        // Lightswitch.alpha = 1
        // Pagination.alpha = 0
        UIView.animateWithDuration(0.7,
            animations: {
                self.ImgBackupTakeSpin.alpha = 1
                self.Lightswitch.alpha = 1
                self.Pagination.alpha = 0
            },
            completion: { (finished: Bool) in
                return true
        })
    }
    
    
    override func viewDidLoad() {
        ScrollTutorial.contentSize = CGSize(width: 1280, height: 568)
        
        ScrollTutorial.delegate = self
        
        ImgBackupTakeSpin.alpha = 0
        
        Lightswitch.alpha = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        Pagination.currentPage = page
    }
    
}



