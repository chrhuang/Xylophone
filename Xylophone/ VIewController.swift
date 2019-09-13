//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{

    var xylophoneSoundEffect: AVAudioPlayer?
    let xylophoneSounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
//        print(sender.tag)
        let xylophoneSound = Bundle.main.path(forResource: xylophoneSounds[sender.tag - 1], ofType:"wav")!
        let url = URL(fileURLWithPath: xylophoneSound)

        do {
            xylophoneSoundEffect = try AVAudioPlayer(contentsOf: url)
            xylophoneSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
        
    }
    
  

}

