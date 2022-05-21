//
//  ViewController.swift
//  HW1.5
//
//  Created by Anuar Orazbekov on 20.05.2022.
//

import UIKit
enum CurrentLight{
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redColorLight: UIView!
    @IBOutlet var yellowColorLight: UIView!
    @IBOutlet var greenColorLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorLight.alpha = lightIsOff
        yellowColorLight.alpha = lightIsOff
        greenColorLight.alpha = lightIsOff
        
        startButton.layer.cornerRadius = 10
    }
    override func viewDidLayoutSubviews() {
        redColorLight.layer.cornerRadius = redColorLight.frame.width/2
        yellowColorLight.layer.cornerRadius = yellowColorLight.frame.width/2
        greenColorLight.layer.cornerRadius = greenColorLight.frame.width/2
    }

    @IBAction func makeStart() {
        startButton.setTitle("Next", for: .normal)
        switch currentLight {
        case .red:
            greenColorLight.alpha = lightIsOff
            redColorLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redColorLight.alpha = lightIsOff
            yellowColorLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenColorLight.alpha = lightIsOn
            yellowColorLight.alpha = lightIsOff
            currentLight = .red
        }
        
    }
    
}

