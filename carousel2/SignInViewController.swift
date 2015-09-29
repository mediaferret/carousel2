//
//  SignInViewController.swift
//  carousel2
//
//  Created by Kevin O'Connell on 9/24/15.
//  Copyright © 2015 Kevin O'Connell. All rights reserved.
//

import UIKit


class SignInViewController: UIViewController,UIScrollViewDelegate {
    
    var initialY: CGFloat!
    let offset: CGFloat = -120
    let alertController = UIAlertController(title: "Sign In Failed", message: "Incorrect user name or password.", preferredStyle: .Alert)
    
    @IBOutlet weak var EmailField: UITextField!
    
    @IBOutlet weak var PasswordField: UITextField!
    
    @IBOutlet weak var LogInForm: UIImageView!
    
    @IBOutlet weak var SignInScroll: UIScrollView!
    @IBOutlet weak var AhoyTxt: UITextField!
    
    @IBOutlet weak var LogInText: UIImageView!
    
    
    @IBOutlet weak var SignInText: UIImageView!
    
    @IBAction func btnSignIn(sender: AnyObject) {
        
        if (EmailField.text!.isEmpty) {
            let alert = UIAlertView()
            alert.title = "Email Required"
            alert.message = "Please enter your email address"
            alert.addButtonWithTitle("Ok")
            alert.show()
        } else if (PasswordField.text!.isEmpty) {
            let alert = UIAlertView()
            alert.title = "Password Required"
            alert.message = "Please enter your  password"
            alert.addButtonWithTitle("Ok")
            alert.show()
        } else if EmailField.text == "email" && PasswordField.text == "password" {
            performSegueWithIdentifier("GoTutorialSegue", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SignInScroll.contentSize = CGSize(width: 320, height: 1000)
        
        SignInScroll.delegate = self
        
        //   var tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "onCustomTap:")
        
        //  tapGestureRecognizer.numberOfTapsRequired = 1;
        
        //   view.userInteractionEnabled = true
        //    view.addGestureRecognizer(tapGestureRecognizer)
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onCustomTap(tapGestureRecognizer: UITapGestureRecognizer) {
        var point = tapGestureRecognizer.locationInView(view)
        
        print("tapped")
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