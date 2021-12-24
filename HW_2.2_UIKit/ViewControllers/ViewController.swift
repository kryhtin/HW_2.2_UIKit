//
//  ViewController.swift
//  HW_2.2_UIKit
//
//  Created by Dmitriy Kryhtin on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var colorView: UIView!
  @IBOutlet weak var redLabel: UILabel!
  @IBOutlet weak var greenLabel: UILabel!
  @IBOutlet weak var blueLabel: UILabel!

  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var blueSlider: UISlider!

  override func viewDidLoad() {
    super.viewDidLoad()
    setViewBackgroundColor()
  }

  @IBAction func redSliderAction() {
    redLabel.text = roundLabelText(redSlider.value)
    setViewBackgroundColor()
  }

  @IBAction func greenSliderAction() {
    greenLabel.text = roundLabelText(greenSlider.value)
    setViewBackgroundColor()
  }

  @IBAction func blueSliderAction() {
    blueLabel.text = roundLabelText(blueSlider.value)
    setViewBackgroundColor()
  }

  private func setViewBackgroundColor() {
    colorView.backgroundColor = UIColor(
      red: CGFloat(redSlider.value),
      green: CGFloat(greenSlider.value),
      blue: CGFloat(blueSlider.value),
      alpha: 1.0
    )
  }
  
  private func roundLabelText(_ value: Float) -> String {
    String(format: "%.2f", value)
  }
}

