//
//  RacesViewController.swift
//  MBD2IOS
//
//  Created by Sam Segers on 05/04/2016.
//  Copyright © 2016 Sam Segers. All rights reserved.
//

import Foundation
import UIKit

class RacesViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var Parser: ApiParser?;
    @IBOutlet var tblRaces: UITableView!;
    var TableData = [""];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableData = [];
        Parser = ApiParser();
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "receivedRaces:", name: "RacesLoaded", object: nil);
       
        Parser?.LoadRaces();
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func receivedRaces(notification: NSNotification)
    {
        let info = notification.userInfo as? Dictionary <String,NSData>;
        let data = info!["data"];
        var jsondata: NSArray!;
        do{
            jsondata = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSArray;
        } catch
        {
            
        }
        
        var results: NSArray = jsondata as! NSArray;
        
        
        for item in results
        {
            var name = item["name"];
            TableData.append(name as! String);
        }
        
        //TableData.append();
        
        self.tblRaces.reloadData();
        //notification.userInfo;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableData.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let Cell:UITableViewCell = UITableViewCell();
        let row = indexPath.row;
        Cell.textLabel?.text = TableData[row];
        return Cell;
    }
};