//
//  PubsViewController.swift
//  MBD2IOS
//
//  Created by Sam Segers on 04/04/2016.
//  Copyright © 2016 Sam Segers. All rights reserved.
//

import Foundation
import UIKit

class PubsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var Parser: ApiParser?;
    
    @IBOutlet var tblPubs: UITableView!;
    var TableData = [""];
    override func viewDidLoad() {
        super.viewDidLoad()
        Parser = ApiParser();
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "receivedPubs:", name: "PubsLoaded", object: nil);
        
        Parser?.LoadPubs();
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func receivedPubs(notification: NSNotification)
    {
        let info = notification.userInfo as? Dictionary <String,NSData>;
        let data = info!["data"];
        var jsondata: NSDictionary!;
        do{
        jsondata = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary;
        } catch
        {
        
        }
        
        var results: NSArray = jsondata["results"] as! NSArray;
        
        
        for item in results
        {
            var name = item["name"];
            TableData.append(name as! String);
        }
        
        //TableData.append();
        
        self.tblPubs.reloadData();
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
        /*let cell = tblPubs.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell;
        let row = indexPath.row;
        cell.textLabel?.text = TableData[row];
        return cell;
        */
        //return UITableViewCell();
    }

}