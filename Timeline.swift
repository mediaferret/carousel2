//
//  Timeline.swift
//  carousel2
//
//  Created by Kevin O'Connell on 9/25/15.
//  Copyright © 2015 Kevin O'Connell. All rights reserved.
//

import UIKit

class Timeline: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var TimeLineScrollView: UIScrollView!
    @IBOutlet weak var Feed: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TimeLineScrollView.delegate = self
        
        TimeLineScrollView.contentSize = CGSize(width: 320, height: 1000)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
