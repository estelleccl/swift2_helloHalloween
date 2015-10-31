//
//  HelloViewController.swift
//  HelloWorld
//
//  Created by Esu Chang on 10/31/15.
//  Copyright © 2015 Esu Chang. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    
//    var helloLabel: UILabel!
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBOutlet weak var hiButton: UIButton!
    
    @IBOutlet weak var byeButton: UIButton!
//    var helloLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    func sayhi(){
        NSLog("Say Hi")
        helloLabel!.text = "hi again"
    }
    

    @IBAction func sayHi(sender: AnyObject) {
        NSLog("Say Hi")
        helloLabel!.text = "hi again"
    }

    @IBAction func saybye(){
        print("Say Bye")
        helloLabel!.text = "bye bye"
    }

}
