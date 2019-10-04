//
//  ViewController.swift
//  Be Well App
//
//  Created by Bobby Reay on 9/28/19.
//  Copyright © 2019 Bobby Reay. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox


class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayerHyeeeehLong: AVAudioPlayer!
    var audioPlayerHyeeeehShort: AVAudioPlayer!
    var beWellAudioPlayer: AVAudioPlayer!

    @IBOutlet weak var beWellButton: UIButton!
    @IBOutlet weak var restoreMindBodyButton: UIButton!
    @IBOutlet weak var spiritualCleanseButton: UIButton!
    
    var randomIndex = 0
    var soundFiles = ["sound1", "sound2", "sound3", "sound4", "sound5", "sound6", "sound7", "sound8", "sound9",
    "sound10", "sound11", "sound12", "sound13", "sound14"]
    

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"background.jpg")!)
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "background.jpg")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        // Be Well Button settings
        beWellButton.backgroundColor = UIColor(hue: 0.6611, saturation: 0.35, brightness: 1, alpha: 1.0)
        beWellButton.layer.cornerRadius = beWellButton.frame.height / 2
        beWellButton.setTitleColor(UIColor.white, for: .normal)
                
        restoreMindBodyButton.backgroundColor = UIColor(hue: 0.6611, saturation: 0.35, brightness: 1, alpha: 1.0)
        restoreMindBodyButton.layer.cornerRadius = restoreMindBodyButton.frame.height / 2
        restoreMindBodyButton.setTitleColor(UIColor.white, for: .normal)
        
        spiritualCleanseButton.backgroundColor = UIColor(hue: 0.6611, saturation: 0.35, brightness: 1, alpha: 1.0)
        spiritualCleanseButton.layer.cornerRadius = beWellButton.frame.height / 2
        spiritualCleanseButton.setTitleColor(UIColor.white, for: .normal)
        
        
        
       }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return .portrait

        }
    }
    
    
    @IBAction func beWell(_ sender: UIButton) {
        
        randomIndex = Int(arc4random_uniform(UInt32(soundFiles.count)))
        let selectedFileName = soundFiles[randomIndex]
        let beWell = Bundle.main.path(forResource: selectedFileName, ofType: "m4a")
            do{
                beWellAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: beWell!))
                
                // Causes to play audio even when phone is in silent mode
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            }catch{
                print(error)
            }
        if beWellAudioPlayer.isPlaying{
            beWellAudioPlayer.pause()
        }
        
        beWellAudioPlayer.currentTime = 0
        beWellAudioPlayer.play()
        
        UIButton.animate(withDuration: 0.2,
        animations: {
        sender.transform = CGAffineTransform(scaleX: 0.975, y: 0.96)
        },
        completion: { finish in
        UIButton.animate(withDuration: 0.2, animations: {
        sender.transform = CGAffineTransform.identity
        })
        })
    
    }
    
    @IBAction func playShortHyeeh(_ sender: UIButton) {
        let hyeeeehShort = Bundle.main.path(forResource: "hyeeeeh1", ofType: "m4a")
        do{
            audioPlayerHyeeeehShort = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: hyeeeehShort!))
           
            // Causes to play audio even when phone is in silent mode
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)

        }catch{
            print(error)
        }
        if audioPlayerHyeeeehShort.isPlaying{
            audioPlayerHyeeeehShort.pause()
        }
        audioPlayerHyeeeehShort.currentTime = 0
        audioPlayerHyeeeehShort.play()
        
        UIButton.animate(withDuration: 0.2,
        animations: {
        sender.transform = CGAffineTransform(scaleX: 0.975, y: 0.96)
        },
        completion: { finish in
        UIButton.animate(withDuration: 0.2, animations: {
        sender.transform = CGAffineTransform.identity
        })
        })
    }
    
    @IBAction func playFullHyeeeh(_ sender: UIButton) {
        
        let hyeeeeh = Bundle.main.path(forResource: "hyeeeeh", ofType: "m4a")
               do{
                   audioPlayerHyeeeehLong = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: hyeeeeh!))
                
                // Causes to play audio even when phone is in silent mode
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)

               }catch{
                   print(error)
               }
        if audioPlayerHyeeeehLong.isPlaying{
            audioPlayerHyeeeehLong.pause()
        }
        audioPlayerHyeeeehLong.currentTime = 0
        audioPlayerHyeeeehLong.play()
        
        UIButton.animate(withDuration: 0.2,
        animations: {
        sender.transform = CGAffineTransform(scaleX: 0.975, y: 0.96)
        },
        completion: { finish in
        UIButton.animate(withDuration: 0.2, animations: {
        sender.transform = CGAffineTransform.identity
        })
        })
    }
}

