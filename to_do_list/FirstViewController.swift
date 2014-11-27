//
//  FirstViewController.swift
//  to_do_list
//
//  Created by Griff Hall on 11/26/14.
//  Copyright (c) 2014 Griffappolis. All rights reserved.
//

import UIKit

var toDoItems:[String] = []

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tasksTable:UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDoItems.count
        
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel.text = toDoItems[indexPath.row]
        
        return cell 
        
    }
    
    override func viewWillAppear(animated: Bool) {
        //this sets everything right before the table appears
        
        if var storedtoDoItems : AnyObject = NSUserDefaults.standardUserDefaults().objectForKey("toDoItems") {
            // just side not, AnyObject defaults to having a !, had to delete the ! to get it running properly
            
            
            toDoItems = []
            
            for var i = 0; i < storedtoDoItems.count; ++i {
                
                toDoItems.append(storedtoDoItems[i] as NSString)
                //converts storedtoDoItems into toDoItems
            }
            
        }
        //above basically says if user hasn't saved any to do items then don't try to retrieve them (new user or something like that)
        
        tasksTable?.reloadData()
        //makes 2nd view items appear in 1st view (linked tableview by right click and linking to tasksTable)
        
    }


}

