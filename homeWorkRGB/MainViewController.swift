//
//  MainViewController.swift
//  homeWorkRGB
//
//  Created by P Z on 07/08/2022.
//

import UIKit

protocol ViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? RGBViewController else { return }
        colorVC.delegate = self
        colorVC.viewColor = view.backgroundColor
    }
    
}

extension MainViewController: ViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}




