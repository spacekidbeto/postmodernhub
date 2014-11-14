//
//  ViewController.swift
//  WordCollage
//
//  Created by Roberto Hernandez on 11/10/14.
//  Copyright (c) 2014 Roberto Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //function to be the interface to be connected to a button 
    @IBAction func changeBackgroundColor(sender: UIButton){
        self.view.backgroundColor = UIColor.blackColor()
    }
    
    @IBAction func revertBackgroundColor(sender: UIButton){
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
    @IBAction func randomBackgroundColor(sender: UIButton){
        var hue = CGFloat(arc4random() % 256) / 256.0
        var saturation = CGFloat(arc4random() % 128) / 256.0 + 0.5
        var brightness = CGFloat(arc4random() % 128) / 256.0 + 0.5
        self.view.backgroundColor = UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
    
    @IBAction func secret(sender: UIButton){
        var alertView = UIAlertView()
        alertView.addButtonWithTitle("I will go to hell")
        alertView.title = "WOW"
        alertView.message = "you've done it now Mister"
        alertView.show();
    }

}

