//
//  ApiParser.swift
//  MBD2IOS
//
//  Created by Sam Segers on 27/03/2016.
//  Copyright © 2016 Sam Segers. All rights reserved.
//

import Foundation

class ApiParser
{
    var AllowLoginSegue: Bool;
    
    init()
    {
        AllowLoginSegue = false;
    }
    
    func CheckUser(Username: String, Password: String)
    {
        let url = NSURL(string: "http://timohoff.nl/3001/login");
        let request = NSMutableURLRequest(URL: url!);
        request.HTTPMethod = "POST";
        var body = "username=" + Username + "&password=" + Password;
        request.setValue("Content-Type", forHTTPHeaderField: "application/x-www-form-urlencoded");
        request.setValue("charset", forHTTPHeaderField: "utf-8");
        request.HTTPBody = body.dataUsingEncoding(NSUTF8StringEncoding);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
     
            if data != nil && data!.length > 0 && error == nil
            {
                let httpResponse = response as! NSHTTPURLResponse;
                
                if(httpResponse.statusCode == 201)
                {
                self.AllowLoginSegue = true;
                NSNotificationCenter.defaultCenter().postNotificationName("UserChecked", object: nil);
                }
                else
                {
                    self.AllowLoginSegue = false;
                    NSNotificationCenter.defaultCenter().postNotificationName("UserChecked", object: nil);
                }
            }
            else
            {
                self.AllowLoginSegue = false;
                NSNotificationCenter.defaultCenter().postNotificationName("UserChecked", object: nil);
            }
            
        });
    }
    
    func CreateUser(Username: String, Password: String)
    {
        let url = NSURL(string: "http://timohoff.nl/3001/signup");
        let request = NSMutableURLRequest(URL: url!);
        request.HTTPMethod = "POST";
        request.setValue("Content-Type", forHTTPHeaderField: "application/x-www-form-urlencoded");
        request.setValue("charset", forHTTPHeaderField: "utf-8");
        var body = "username=" + Username + "&password=" + Password;
        request.HTTPBody = body.dataUsingEncoding(NSUTF8StringEncoding);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data != nil && data!.length > 0 && error == nil
            {
                
            }

            
        });
    }
    /*
    func LoadRaces()
    {
        let url = NSURL(string: "");
        let request = NSURLRequest(URL: url!);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data!.length > 0 && error == nil
            {
                
            }
            
        });
    }
    
    func GetRaceDate(Race: String)
    {
        let url = NSURL(string: "");
        let request = NSURLRequest(URL: url!);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data!.length > 0 && error == nil
            {
                
            }
            
        });
    }
    
    func AddRace(Race: String)
    {
        let url = NSURL(string: "");
        let request = NSURLRequest(URL: url!);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data!.length > 0 && error == nil
            {
                
            }
            
        });
    }
    
    func UpdateRace(Race: String)
    {
        let url = NSURL(string: "");
        let request = NSURLRequest(URL: url!);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data!.length > 0 && error == nil
            {
                
            }
            
        });
    }
    
    func LoadPubs()
    {
        let url = NSURL(string: "");
        let request = NSURLRequest(URL: url!);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data!.length > 0 && error == nil
            {
                
            }
            
        });
    }
    
    func LoadPubData(Pub: String)
    {
        let url = NSURL(string: "");
        let request = NSURLRequest(URL: url!);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data!.length > 0 && error == nil
            {
                
            }
            
        });
    }
    
    func AddPub(Pub: String)
    {
        let url = NSURL(string: "");
        let request = NSURLRequest(URL: url!);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data!.length > 0 && error == nil
            {
                
            }
            
        });
    }
    
    func UpdatePub(Pub: String)
    {
        let url = NSURL(string: "");
        let request = NSURLRequest(URL: url!);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data!.length > 0 && error == nil
            {
                
            }
            
        });
    }
    */
};