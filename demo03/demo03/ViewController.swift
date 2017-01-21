//
//  ViewController.swift
//  demo03
//
//  Created by Tan Do on 1/20/17.
//  Copyright © 2017 Tan Do. All rights reserved.
//

import UIKit
//we add the UITextFieldDelegate, so that we can control an event that happens in the textfield. E.g: dismiss the keyboard when pressing the return key
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myText: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // myText.delegate = self
    }

    @IBAction func myButton(_ sender: Any) {
        //variable name is the data insert into textfield
        let name = myText.text!
        //use the data that input in the text field
        myLabel.text = "Hello \(name)!"
        //hide the keyboard after tapping the button
        myText.resignFirstResponder()
    }
    //User tap anywhere on the screen to hide the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    //dismiss the keyboard when pressing the return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myText.resignFirstResponder()
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

