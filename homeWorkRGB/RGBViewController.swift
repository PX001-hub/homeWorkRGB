//
//  ViewController.swift
//  homeWorkRGB
//
//  Created by P Z on 05/08/2022.
//

import UIKit
import SwiftUI

class RGBViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    @IBOutlet var redLable: UILabel!
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var blueLable: UILabel!
    
    
    var delegate: ViewControllerDelegate!
    var viewColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 20
        //colorView.backgroundColor = viewColor
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        setSliders()
        setColor()
        
        
        

       
    }
    
    @IBAction func redSliderAction() {
        setColor()
    }
    
    @IBAction func greenSliderAction() {
        setColor()
    }
    
    @IBAction func blueSliderAction() {
        setColor()
    }
    
//MARK: —
    
    @IBAction func redSliderValue() {
        redLable.text = String(format: "%.1f", redSlider.value)
    }
    

    @IBAction func greenSliderValue() {
        greenLable.text = String(format: "%.1f", greenSlider.value)
    }
    
    
    @IBAction func blueSliderValue() {
        blueLable.text = String(format: "%.1f", blueSlider.value)
    }
    
}

    
//}

extension RGBViewController {
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    
    }
        
    
  
    
    private func setSliders() {
    }

    
}

    

