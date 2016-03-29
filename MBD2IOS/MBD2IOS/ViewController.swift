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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "Login"
        {
            
            // wachten om te kijken of de user + pass correct zijn
            while(Parser?.Answer == "No Answer")
            {
            
            }
            
            if(Parser?.Answer == "Error")
            {
                let alert: UIAlertView;
                alert = UIAlertView();
                alert.title = "Password or User incorrect!";
                alert.message = "Insert a valid password or user!";
                alert.addButtonWithTitle("okay");
                alert.show();
            
                return false;
            }
            
            Parser?.Answer = "No Answer";
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
}

