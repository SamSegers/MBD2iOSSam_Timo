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
    
    var Answer: String!;
    
    init()
    {
        self.Answer = "No Answer"
    }
    
    func CheckUser(Username: String, Password: String)
    {
        let url = NSURL(string: "");
        let request = NSURLRequest(URL: url!);
        let queue: NSOperationQueue = NSOperationQueue();
        NSURLConnection.sendAsynchronousRequest(request,queue: queue,completionHandler:{ (response: NSURLResponse?,data: NSData?,error: NSError?) -> Void in
            if data!.length > 0 && error == nil
            {
                self.Answer = "Succes";
            }
            else
            {
                self.Answer = "Error";
            }
            
        });
    }
    
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
    
};