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
    
    @IBOutlet weak var colorSlider: UISlider!
    
    @IBOutlet weak var backgroundUIView: UIView!
    
    var counter: Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func respond(sender: UIButton) {
        if (counter == 0){
            respondLabel?.text = "Follow me \(respondText!.text!). I'm bringing you to the livingroom and show you to everyone"
            counter += 1
        }
        else if (counter == 1){
            respondLabel?.text = "Boo!!! A Ghost float by. What do you want to say to the Ghost"
            counter += 1
        }
        else if (counter == 2){
            respondLabel?.text = "Hi, I'm Casper the Happy Ghost, Everyone is waiting for you... Let's Go"
            counter += 1
        }
        else if (counter == 3){
            respondLabel?.text = "Surprise!!! Welcome to iOS hunted house!!! Trick or Treat?"
            counter += 1
        }
        else if (counter == 4 && (respondText!.text! == "Trick" || respondText!.text! == "trick")){
            respondLabel?.text = "You are push out the window!!!"
            counter += 1
        }
        else if (counter == 4 && (respondText!.text! == "Treat" || respondText!.text! == "treat")){
            respondLabel?.text = "You are eaten!!! Wahahaha!!!"
            counter += 1
        }
        else if (counter == 4){
            respondLabel?.text = "You are eaten!!! Wahahaha!!"
            counter += 8
        }
        else if (counter == 10){
            respondLabel?.text = "You got kick out of the house!!! Don't come back or we will eat you"
            counter += 1
        }
        else if (counter == 11){
            respondLabel?.text = "Chasing after you!!! You are eaten!!! Welcome to our family"
            counter += 1
        }
        else if (counter > 11){
            respondLabel?.text = "You are dead!!! You are stuck with us!!! Wahahhaha!!! Welcome to our family..."
        }
    }
    
    @IBAction func runAway(sender: AnyObject) {
        if (counter < 11){
            respondLabel?.text = "You got kick out of the house!!! Don't come back or we will eat you"
            counter = 11
            submitBtn.enabled = false
            submitBtn.hidden = true
        }
        else if (counter == 11){
            respondLabel?.text = "Chasing after you!!! You are eaten!!! You are dead!!! You are stuck with us!!! Wahahhaha!!! Welcome to our family..."
            counter += 10
        }
        else if (counter > 20){
            respondLabel?.text = "You are dead!!! You are stuck with us!!! Let's hunt somemore human!!!"
        }
    }
    
    @IBAction func changeBackgroundColor(slider: UISlider) {
        
        var newBackgroundColor : UIColor
        
        let sliderValue = CGFloat(slider.value)
        
        newBackgroundColor = UIColor(hue: sliderValue, saturation: 0.5, brightness: 0.5, alpha: 0.5)
        
        backgroundUIView.backgroundColor = newBackgroundColor
        submitBtn.backgroundColor = newBackgroundColor
        runAwayBtn.backgroundColor = newBackgroundColor
        
    }
    

}
