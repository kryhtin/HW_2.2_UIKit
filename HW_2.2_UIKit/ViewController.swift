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

  private let minimumValue: Float = 0
  private let maximumValue: Float = 1
  private let visible: CGFloat = 1

  override func viewDidLoad() {
    super.viewDidLoad()

    redSlider.value = maximumValue
    redSlider.minimumValue = minimumValue
    redSlider.maximumValue = maximumValue

    greenSlider.value = minimumValue
    greenSlider.minimumValue = minimumValue
    greenSlider.maximumValue = maximumValue

    blueSlider.value = minimumValue
    blueSlider.minimumValue = minimumValue
    blueSlider.maximumValue = maximumValue

    redLabel.text = String(redSlider.value)
    greenLabel.text = String(greenSlider.value)
    blueLabel.text = String(blueSlider.value)

    setViewBackgroundColor()
  }

  @IBAction func redSliderAction() {
    redLabel.text = String(
      format: "%.2f",
      redSlider.value
    )
    setViewBackgroundColor()
  }

  @IBAction func greenSliderAction() {
    greenLabel.text = String(
      format: "%.2f",
      greenSlider.value
    )
    setViewBackgroundColor()
  }

  @IBAction func blueSliderAction() {
    blueLabel.text = String(
      format: "%.2f",
      blueSlider.value
    )
    setViewBackgroundColor()
  }

  private func setViewBackgroundColor() {
    colorView.backgroundColor = UIColor(
      red: CGFloat(redSlider.value),
      green: CGFloat(greenSlider.value),
      blue: CGFloat(blueSlider.value),
      alpha: visible
    )
  }
}

