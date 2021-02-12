//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sender.currentTitle!)
        
        // Set button to half opacity
        sender.alpha = 0.5
        
        // Return button to original state over 0.2 seconds
        UIView.animate(withDuration: 0.4) {
                    sender.alpha = 1
        }
    }
    
    // Receive key pressed, play corresponding sound
    func playSound(_ note: String) {
            let url = Bundle.main.url(forResource: note, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player!.play()
                    
        }
}

