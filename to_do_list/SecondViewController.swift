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
        
        println(toDoItems)
        
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
        
        self.view.endEditing(true)
        //hides keyboard if you click anywhere outside the text field (i think)
        
    }
    


}

