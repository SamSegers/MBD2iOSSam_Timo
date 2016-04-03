//
//  ViewController.swift
//  MBD2IOS
//
//  Created by Sam Segers on 23/03/2016.
//  Copyright © 2016 Sam Segers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtUser: UITextField!;
    @IBOutlet var txtPass: UITextField!;
    
    var Parser: ApiParser?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Parser = ApiParser();
        NSNotificationCenter.defaultCenter().addObserver(self,selector: "receivedUserChecked",name: "UserCheked",object: nil);
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func receivedUserChecked(object: AnyObject)
    {
        performSegueWithIdentifier("Login", sender: nil);
    }

    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "Login"
        {
            if(Parser?.AllowLoginSegue == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        return true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LoginClicked(sender: AnyObject?)
    {
        Parser!.CheckUser(txtUser.text!,Password: txtPass.text!);
    }
    
    @IBAction func SignupClicked(sender: AnyObject?)
    {
        Parser!.CreateUser(txtUser.text!,Password:  txtPass.text!);
    }
}

