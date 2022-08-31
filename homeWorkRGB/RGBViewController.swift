//
//  ViewController.swift
//  homeWorkRGB
//
//  Created by P Z on 05/08/2022.
//

import UIKit
import SwiftUI

final class RGBViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLable: UILabel!
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var blueLable: UILabel!
    //MARK: Properties
    var delegate: ViewControllerDelegate!
    var viewColor: UIColor!
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 20
        colorView.backgroundColor = viewColor
        
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
    
    @IBAction func doneButton(_ sender: UIButton) {
        let color = UIColor(
                    red: CGFloat(redSlider.value),
                    green: CGFloat(greenSlider.value),
                    blue: CGFloat(blueSlider.value),
                    alpha: 1
                )
        delegate.setColor(color)
        navigationController?.popViewController(animated: true)
    }
}

//MARK: - Private Methods
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
    
//MARK: - trying to replicate and apply information from the class
    
    private func setValue(for colorSliders: UISlider...) {
        let ciColor = CIColor(color: viewColor)
        
        colorSliders.forEach { slider in
            switch slider {
            case redSlider: redSlider.value = Float(ciColor.red)
            case greenSlider: greenSlider.value = Float(ciColor.green)
            default: blueSlider.value = Float(ciColor.blue)
   
            }
            
        }
    }
}

    

