//
//  ViewController.swift
//  Temp
//
//  Created by Fausto Checa on 13/2/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sliderColor: UISlider!
    @IBOutlet weak var sliderSize: UISlider!
    @IBOutlet weak var sliderNumber: UISlider!
    
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderColor.addTarget(self, action: #selector(readColor(sender:)), for: UIControlEvents.allTouchEvents)
        
        
        sliderSize.addTarget(self, action: #selector(readSize(sender:)), for: UIControlEvents.allTouchEvents)
        
        sliderNumber.addTarget(self, action: #selector(readNumber(sender:)), for: UIControlEvents.allTouchEvents)
        
    }
    
    
    @objc func readColor(sender: UISlider) {
        sender.minimumValue = 0
        sender.maximumValue = 100
        
        switch sender.value {
        case 80...100:
            view2.backgroundColor = UIColor.red
        case 60...80:
            view2.backgroundColor = UIColor.yellow
        case 40...60:
            view2.backgroundColor = UIColor.blue
        case 20...40:
            view2.backgroundColor = UIColor.green
        case 0...20:
            view2.backgroundColor = UIColor.orange
            
        default:
            print("Error")
        }
        
    }
    
    @objc func readSize(sender: UISlider) {
        
        sender.minimumValue = 1
        sender.maximumValue = 25
        
        // font size = sender value
        
        numberLabel.font = UIFont(name: "Helvetica", size: CGFloat(Float(sender.value*5)))
        
    }
    
    @objc func readNumber(sender: UISlider) {
        sender.minimumValue = 1
        sender.maximumValue = 100
        numberLabel.text = String(Int(sender.value))
        
       
    }
}


