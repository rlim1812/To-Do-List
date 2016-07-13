//
//  SecondViewController.swift
//  To-Do List
//
//  Created by Ryan Lim on 7/12/16.
//  Copyright © 2016 Ryan Lim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userInput: UITextField!
    
    @IBAction func addButton(sender: AnyObject) {
        toDoList.append(userInput.text!)
        userInput.text = ""
        //save the changes in permanent storage
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.userInput.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn (textField: UITextField) -> Bool {
        userInput.resignFirstResponder()
        return true
    }

}

