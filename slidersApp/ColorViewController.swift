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
        guard let vc = segue.destination as? SettingsViewController else { return }
        vc.colorView.backgroundColor = view.backgroundColor
         }
      
  
    

}
