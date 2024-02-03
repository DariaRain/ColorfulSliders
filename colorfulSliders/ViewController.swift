//
//  ViewController.swift
//  colorfulSliders
//
//  Created by MacBook Pro on 02.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var viewForColor: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var labelForRedSlider: UILabel!
    @IBOutlet var labelForGreenSlider: UILabel!
    @IBOutlet var labelForBlueSlider: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewForColor.layer.cornerRadius = 20
        
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        
        setupLabelForRedSlider()
        setupLabelForGreenSlider()
        setupLabelForBlueSlider()
    }
    
    @IBAction func blueSliderAction() {
        changeColor()
    }
    @IBAction func greenSliderAction() {
        changeColor()
    }
    @IBAction func redSliderAction() {
        changeColor()
    }
    
    private func setupLabelForRedSlider() {
        labelForRedSlider.text = String(redSlider.value)
    }
    private func setupLabelForGreenSlider() {
        labelForGreenSlider.text = String(greenSlider.value)
    }
    private func setupLabelForBlueSlider() {
        labelForBlueSlider.text = String(blueSlider.value)
    }
    
    private func setupRedSlider() {
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        redSlider.thumbTintColor = .red
    }
    private func setupGreenSlider() {
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .gray
        greenSlider.thumbTintColor = .green
    }
    private func setupBlueSlider() {
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .gray
        blueSlider.thumbTintColor = .blue
    }
    
    private func changeColor() {
        viewForColor.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

