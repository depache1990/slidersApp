//
//  ColorViewController.swift
//  slidersApp
//
//  Created by Anton Duplin on 24/7/21.
//

import UIKit

class ColorViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.viewColor = view.backgroundColor ?? UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            
  
    

}
    }

