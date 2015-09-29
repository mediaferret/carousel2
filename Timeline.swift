//
//  Timeline.swift
//  carousel2
//
//  Created by Kevin O'Connell on 9/25/15.
//  Copyright © 2015 Kevin O'Connell. All rights reserved.
//

import UIKit

let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .Alert)


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
    
    
}
