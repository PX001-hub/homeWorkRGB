//
//  WelcomViewControler.swift
//  homeWorkRGB
//
//  Created by P Z on 24/08/2022.
//

import UIKit

class WelcomViewControler: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
// эксперименты:
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as! RGBViewController
            vc.view.backgroundColor = UIColor.black
        }
    
    
    
}
