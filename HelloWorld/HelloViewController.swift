//
//  HelloViewController.swift
//  HelloWorld
//
//  Created by Esu Chang on 10/31/15.
//  Copyright © 2015 Esu Chang. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let helloLabel: UILabel = UILabel(frame: CGRect(x: 20, y: 20, width: 200, height: 150))
        helloLabel.text = "Hello World"
        helloLabel.backgroundColor = UIColor.blueColor()
        
        self.view.addSubview(helloLabel)
        
        let hiButton: UIButton = UIButton(frame: CGRect(x: 20, y: 250, width: 100, height: 30))
        hiButton.setTitle("Hi", forState: UIControlState.Normal)
        
        self.view.addSubview(hiButton)
        
        let byeButton: UIButton = UIButton(frame: CGRect(x: 250, y: 250, width: 100, height: 30))
        byeButton.setTitle("Bye", forState: UIControlState.Normal)
        
        self.view.addSubview(byeButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }

}
