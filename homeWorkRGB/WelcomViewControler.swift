//
//  WelcomViewControler.swift
//  homeWorkRGB
//
//  Created by P Z on 24/08/2022.
//

import UIKit

protocol ViewControllerDelegate {
    func setColor(_ color: UIColor)
}


final class WelcomViewControler: UIViewController, ViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // эксперименты:
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? RGBViewController {
            vc.delegate = self
        }
    }
}
