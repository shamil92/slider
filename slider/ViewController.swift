//
//  ViewController.swift
//  slider
//
//  Created by Шамиль on 02.03.2020.
//  Copyright © 2020 Shamil Kammaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!

    
    @IBOutlet weak var rSlider: UISlider!
    @IBOutlet weak var gSlider: UISlider!
    @IBOutlet weak var bSlider: UISlider!
    
   
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rSlider.tintColor = UIColor.red
        gSlider.tintColor = UIColor.green
        bSlider.tintColor = UIColor.blue
        
        
        redLabel.text = ""
        greenLabel.text = " "
        blueLabel.text = " "
        
        colorView.layer.cornerRadius = 20
        
        
    }

    func changeColor () {
        colorView.backgroundColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    }

    
@IBAction func rgbSliderChanged(_ sender: Any) {
      changeColor()
       redLabel.text = String(rSlider.value)
       greenLabel.text = String(gSlider.value)
       blueLabel.text = String(bSlider.value)
    
    }
    

    
 
        
    
}

