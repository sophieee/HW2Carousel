//
//  SignInViewController.swift
//  HW2Carousel
//
//  Created by Sophie Tang on 9/14/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIAlertViewDelegate {

    @IBOutlet weak var InputFieldView: UIView!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var SignInButtonView: UIView!
    @IBOutlet weak var LogInTextImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        InputFieldView.frame = CGRect(x: 0, y: 66, width: 320, height: 141)
        SignInButtonView.frame = CGRect(x: 0, y: 200, width: 320, height: 116)
        LogInTextImage.hidden = true
    
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        InputFieldView.frame = CGRect(x: 0, y: 144, width: 320, height: 141)
        SignInButtonView.frame = CGRect(x: 0, y: 450, width: 320, height: 116)
        LogInTextImage.hidden = false
    }
    
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        // buttonIndex is 0 for Cancel
        // buttonIndex ranges from 1-n for the other buttons.
    }
    
    @IBAction func OnTapBack(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func OnTapEmail(sender: AnyObject) {
        EmailTextField.becomeFirstResponder()
    }
    
    @IBAction func OnTapPassword(sender: AnyObject) {
        PasswordTextField.becomeFirstResponder()
    }
    
    @IBAction func OnTapSignIn(sender: AnyObject) {
        if(self.EmailTextField.text.isEmpty || self.PasswordTextField.text.isEmpty) {
            var alertView = UIAlertView(title: "Email/Password Required", message: "Enter your email and password to sign in to Dropbox.", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
        } else{
            var alertView = UIAlertView(title: "Signing in...", message: "", delegate: self, cancelButtonTitle: nil)
            alertView.show()
            delay(2){
                alertView.dismissWithClickedButtonIndex(0, animated: true)
                if(self.PasswordTextField.text == "123") {
                    [self.performSegueWithIdentifier("SignIn", sender: self)]
                } else{
                    var alertView = UIAlertView(title: "Check Email/Password", message: "Your email and/or password is incorrect.", delegate: self, cancelButtonTitle: "OK")
                    alertView.show()
                }
            }
        }
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
