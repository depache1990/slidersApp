//
//  ViewController.swift
//  slidersApp
//
//  Created by Anton Duplin on 9/7/21.
//

import UIKit
class ViewController: UIViewController {
    // mainLabel
    @IBOutlet weak var mainLabel: UIView!
    
    // LabelsColors
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
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
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
    
    }
    
    func changeRgbColor() {
        mainLabel.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    @IBAction func sliderActionRed() {
        changeRgbColor()
        redValueLabel.text = String(sliderRed.value)
    }
    
    @IBAction func sliderActionGreen() {
        changeRgbColor()
        greenValueLabel.text = String(sliderGreen.value)
    }
    
    @IBAction func sliderActionBlue() {
        changeRgbColor()
        blueValueLabel.text = String(sliderBlue.value)
    }
    
    
}

