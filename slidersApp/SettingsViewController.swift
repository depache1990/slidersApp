//
//  ViewController.swift
//  slidersApp
//
//  Created by Anton Duplin on 9/7/21.
//

import UIKit


class SettingsViewController: UIViewController {
    
    // mainLabel
    @IBOutlet weak var colorView: UIView!
    
    // LabelsNumberValue
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    // Sliders
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
        redValueLabel.text = String(format: "%.2f", sliderRed.value)
        greenValueLabel.text = String(format: "%.2f", sliderGreen.value)
        blueValueLabel.text = String(format: "%.2f", sliderBlue.value)
    }
  
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        redValueLabel.text = String(format: "%.2f", sliderRed.value)
        greenValueLabel.text = String(format: "%.2f", sliderGreen.value)
        blueValueLabel.text = String(format: "%.2f", sliderBlue.value
        )
    }
  
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    @IBAction func backOut(_ sender: Any) {
        dismiss(animated: true)
    }
}
    
