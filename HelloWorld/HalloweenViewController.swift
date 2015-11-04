//
//  HalloweenViewController.swift
//  HelloWorld
//
//  Created by Esu Chang on 10/31/15.
//  Copyright © 2015 Esu Chang. All rights reserved.
//

import UIKit

class HalloweenViewController: UIViewController {
    
    @IBOutlet weak var respondLabel: UILabel!
    
    @IBOutlet weak var submitBtn: UIButton!
    
    @IBOutlet weak var runAwayBtn: UIButton!
    
    @IBOutlet weak var respondText: UITextField!
    
    @IBOutlet weak var colorSlide: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    var ctr: Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func respond(sender: UIButton) {
        if (ctr == 0){
            respondLabel?.text = "Follow me \(respondText!.text!). I'm bringing you to the livingroom and show you to everyone"
            ctr += 1
        }
        else if (ctr == 1){
            respondLabel?.text = "Boo!!! A Ghost float by. What do you want to say to the Ghost"
            ctr += 1
        }
        else if (ctr == 2){
            respondLabel?.text = "Hi, I'm Casper the Happy Ghost, Everyone is waiting for you... Let's Go"
            ctr += 1
        }
        else if (ctr == 3){
            respondLabel?.text = "Surprise!!! Welcome to iOS hunted house!!! Trick or Treat?"
            ctr += 1
        }
        else if (ctr == 4 && (respondText!.text! == "Trick" || respondText!.text! == "trick")){
            respondLabel?.text = "You are push out the window!!!"
            ctr += 1
        }
        else if (ctr == 4 && (respondText!.text! == "Treat" || respondText!.text! == "treat")){
            respondLabel?.text = "You are eaten!!! Wahahaha!!!"
            ctr += 1
        }
        else if (ctr == 4){
            respondLabel?.text = "You are eaten!!! Wahahaha!!"
            ctr += 8
        }
        else if (ctr == 10){
            respondLabel?.text = "You got kick out of the house!!! Don't come back or we will eat you"
            ctr += 1
        }
        else if (ctr == 11){
            respondLabel?.text = "Chasing after you!!! You are eaten!!! Welcome to our family"
            ctr += 1
        }
        else if (ctr > 11){
            respondLabel?.text = "You are dead!!! You are stuck with us!!! Wahahhaha!!! Welcome to our family..."
        }
    }
    
    @IBAction func runAway(sender: AnyObject) {
        if (ctr < 11){
            respondLabel?.text = "You got kick out of the house!!! Don't come back or we will eat you"
            ctr = 11
            submitBtn.enabled = false
            submitBtn.hidden = true
        }
        else if (ctr == 11){
            respondLabel?.text = "Chasing after you!!! You are eaten!!! You are dead!!! You are stuck with us!!! Wahahhaha!!! Welcome to our family..."
            ctr += 10
        }
        else if (ctr > 20){
            respondLabel?.text = "You are dead!!! You are stuck with us!!! Let's hunt somemore human!!!"
        }
    }
    
    @IBAction func changeBackgroundColor(slider: UISlider) {
        
        var newBackgroundColor : UIColor
        
        let sliderValue = CGFloat(slider.value)
        
        newBackgroundColor = UIColor(hue: sliderValue, saturation: 0.5, brightness: 0.5, alpha: 0.5)
        
        colorView.backgroundColor = newBackgroundColor
        submitBtn.backgroundColor = newBackgroundColor
        runAwayBtn.backgroundColor = newBackgroundColor
        
    }
    

}
