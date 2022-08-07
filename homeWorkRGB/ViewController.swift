//
//  ViewController.swift
//  homeWorkRGB
//
//  Created by P Z on 05/08/2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

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
        
        
//        redLable.delegate = self
//        greenLable.delegate = self
//        blueLable.delegate = self

        setSliders()
        setColor()
//        setupValueLable()
       
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
        redLable.text = String(format: "%.2", redSlider.value)
    }
    

    @IBAction func greenSliderValue() {
        greenLable.text = String(format: "%.2", greenSlider.value)
    }
    
    
    @IBAction func blueSliderValue() {
        blueLable.text = String(format: "%.2", blueSlider.value)
    }
    
//    private func setupValueLable () {
//        redLable.text = String(redSlider.value)
    
}

    
//}

extension ViewController {
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    
    }
        
    
  
    
    private func setSliders() {
//    let ciColor = CIColor(color: viewColor)
//
//        redSlider.value = Float(ciColor.red)
//        greenSlider.value = Float(ciColor.green)
//        blueSlider.value = Float(ciColor.blue)

//        redSlider.value = 0
//        redSlider.minimumValue = 0
//        redSlider.minimumValue = 1
//
//        greenSlider.value = 0
//        greenSlider.minimumValue = 0
//        greenSlider.minimumValue = 1
//
//        blueSlider.value = 0
//        blueSlider.minimumValue = 0
//        blueSlider.minimumValue = 1
    }

    
}

    

