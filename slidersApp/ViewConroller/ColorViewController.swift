//
//  ColorViewController.swift
//  slidersApp
//
//  Created by Anton Duplin on 24/7/21.
//

import UIKit
protocol SettingsViewControllerDelegate {
    func setNewColor(for colorBackground: UIColor)
}
class ColorViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
    @IBOutlet var colorBackgroundOU: UIView!
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.viewColor = view.backgroundColor ?? UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        settingsVC.delegate = self
}
    }
extension ColorViewController: SettingsViewControllerDelegate {
    func setNewColor(for colorBackground: UIColor) {
        colorBackgroundOU.backgroundColor = colorBackground
    }
    
}

