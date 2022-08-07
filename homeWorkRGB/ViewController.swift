//
//  ViewController.swift
//  homeWorkRGB
//
//  Created by P Z on 05/08/2022.
//

import UIKit

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
//
       // setSliders()
       
//   setValue(for: redLabel, greenLabel, blueLabel)
////
////    }
//
//    @IBAction func rgbSliderAction(_ sender: UISlider) {
//
//        switch sender {
//        case redSlider:
//            setValue(for: colorView)
//        case greenSlider:
//            setValue(for: colorView)
//        default:
//            setValue(for: colorView)
//        }
//    }
       
        setColor()
}
}

extension ViewController {
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    
    }
    
//    private func setSliders() {
//        let ciColor = CIColor(color: viewColor)
//
//        redSlider.value = Float(ciColor.red)
//        greenSlider.value = Float(ciColor.green)
//        blueSlider.value = Float(ciColor.blue)
//
//    }

    
}

    

