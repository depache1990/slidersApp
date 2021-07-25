//
//  ViewController.swift
//  slidersApp
//
//  Created by Anton Duplin on 9/7/21.
//

import UIKit


class SettingsViewController: UIViewController {
    
    // mainView
    @IBOutlet weak var colorView: UIView!
    
    // Labels
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    // Slider
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    // TextField
    @IBOutlet weak var redValueTF: UITextField!
    @IBOutlet weak var greenValueTF: UITextField!
    @IBOutlet weak var blueValueTF: UITextField!
    
    var delegate: SettingsViewControllerDelegate!
    
    var viewColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        colorView.backgroundColor = viewColor
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        
        redValueLabel.text = String(format: "%.2f", sliderRed.value)
        greenValueLabel.text = String(format: "%.2f", sliderGreen.value)
        blueValueLabel.text = String(format: "%.2f", sliderBlue.value)
        
        redValueTF.delegate = self
        greenValueTF.delegate = self
        blueValueTF.delegate = self
        
    }
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: 1
        )
    }
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        //передача значения слайдеров в лейблы
        redValueLabel.text = String(format: "%.2f", sliderRed.value)
        greenValueLabel.text = String(format: "%.2f", sliderGreen.value)
        blueValueLabel.text = String(format: "%.2f", sliderBlue.value)
        
        //передача значения слайдеров в TextField
        redValueTF.text = String(format: "%.2f", sliderRed.value)
        greenValueTF.text = String(format: "%.2f", sliderGreen.value)
        blueValueTF.text = String(format: "%.2f", sliderBlue.value)
    }
    
    @IBAction func safeButton() {
        view.endEditing(true)
        delegate.setNewColor(for: colorView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
}
extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newValue = textField.text else { return }
        guard let numberValue = Float(newValue) else { return }
        if textField == redValueTF {
            sliderRed.value = numberValue
        } else if textField == greenValueTF {
            sliderGreen.value = numberValue
        } else if textField == blueValueTF {
            sliderBlue.value = numberValue
        }
    }
}


