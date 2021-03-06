//
//  SecondViewController.swift
//  to_do_list
//
//  Created by Griff Hall on 11/26/14.
//  Copyright (c) 2014 Griffappolis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    

    @IBOutlet weak var toDoItem: UITextField!
    
    
    @IBAction func addItem(sender: AnyObject) {
        
        toDoItems.append(toDoItem.text)
        
        let fixedToDoItems = toDoItems
        //creates an immutable variable
        
        NSUserDefaults.standardUserDefaults().setObject(fixedToDoItems, forKey: "toDoItems")
        //sets user defaults to be equal to immutable variable
        NSUserDefaults.standardUserDefaults().synchronize()
        //saves data permanently
        
        
        
        self.view.endEditing(true)
        //hides keyboard if you click anywhere outside the text field (i think)
        //when its here keyboard disappears when you hit "add an item"
        //if you want it to stay out, see line 55
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
        
        //hides keyboard if you hit return
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        
        //self.view.endEditing(true) if its here keyboard does not disappear when you hit "add an item"
        
    }
    


}

