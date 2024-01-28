//
//  ViewController.swift
//  trafficLights
//
//  Created by Adilbek Mels on 28.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redViewLabel: UIView!
    @IBOutlet var yellowViewLabel: UIView!
    @IBOutlet var greenViewLabel: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    var currentLight  = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startButton.layer.cornerRadius = 10
        redViewLabel.layer.cornerRadius = 50
        yellowViewLabel.layer.cornerRadius = 50
        greenViewLabel.layer.cornerRadius = 50
        
        startLightTraffic()
    }
    
    func startLightTraffic(){
        redViewLabel.alpha = 0.3
        yellowViewLabel.alpha = 0.3
        greenViewLabel.alpha = 0.3
    }
    
    

    @IBAction func startButtonTapped(_ sender: UIButton) {
        startLightTraffic()
        
        if currentLight == 0 {
            redViewLabel.alpha = 1.0
        } else if currentLight == 1 {
            yellowViewLabel.alpha = 1.0
        } else if currentLight == 2 {
            greenViewLabel.alpha = 1.0
        }
        currentLight += 1
        if currentLight > 2 {
            currentLight = 0
        }
        if currentLight == 1 {
            startButton.setTitle("Next", for: .normal)
        }
    }
    
    
}

