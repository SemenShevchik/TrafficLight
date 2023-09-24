//
//  ViewController.swift
//  TrafficLight
//
//  Created by Семен Шевчик on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColour: UIView!
    @IBOutlet weak var yellowColour: UIView!
    @IBOutlet weak var greenColour: UIView!
    @IBOutlet weak var buttonNext: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColour.layer.cornerRadius = 81
        yellowColour.layer.cornerRadius = 81
        greenColour.layer.cornerRadius = 81
        
        buttonNext.layer.cornerRadius = 20
        
        redColour.alpha = 0.3
        yellowColour.alpha = 0.3
        greenColour.alpha = 0.3
        
        
        
        buttonNext.setTitle("Start", for: .normal)
    }
    @IBAction func pressButtonNext() {
        
        if redColour.alpha == 0.3 {
            redColour.alpha = 1
            yellowColour.alpha = 0.3
            greenColour.alpha = 0.3
            buttonNext.setTitle("Red", for: .normal)
        }
        else if yellowColour.alpha == 0.3 {
            yellowColour.alpha = 1
            greenColour.alpha = 0.3
            redColour.alpha = 0.3
            buttonNext.setTitle("Yellow", for: .normal)
        }
        else if greenColour.alpha == 0.3 {
            greenColour.alpha = 1
            redColour.alpha = 0.3
            yellowColour.alpha = 0.3
            buttonNext.setTitle("Green", for: .normal)
        }
            
        }
    }
    


