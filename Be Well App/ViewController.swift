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
    
    var audioPlayerHyeeeehLong: AVAudioPlayer = AVAudioPlayer()
    var audioPlayerHyeeeehShort: AVAudioPlayer = AVAudioPlayer()
    var beWellAudioPlayer: AVAudioPlayer = AVAudioPlayer()

    @IBOutlet weak var beWellButton: UIButton!
    @IBOutlet weak var restoreMindBodyButton: UIButton!
    @IBOutlet weak var spiritualCleanseButton: UIButton!
    
    var randomIndex = 0
    var soundFiles = ["sound1", "sound2", "sound3", "sound4", "sound5"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"background.jpg")!)
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "background.jpg")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
       }
    
    
    @IBAction func beWell(_ sender: Any) {
        randomIndex = Int(arc4random_uniform(UInt32(soundFiles.count)))
        let selectedFileName = soundFiles[randomIndex]
        let beWell = Bundle.main.path(forResource: selectedFileName, ofType: "m4a")
            do{
                beWellAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: beWell!))
            }catch{
                print(error)
            }
        if beWellAudioPlayer.isPlaying{
            beWellAudioPlayer.pause()
        }
        
        beWellAudioPlayer.currentTime = 0
        beWellAudioPlayer.play()
    
    }
    
    @IBAction func playShortHyeeh(_ sender: Any) {
        let hyeeeehShort = Bundle.main.path(forResource: "hyeeeeh1", ofType: "m4a")
        do{
            audioPlayerHyeeeehShort = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: hyeeeehShort!))
        }catch{
            print(error)
        }
        if audioPlayerHyeeeehShort.isPlaying{
            audioPlayerHyeeeehShort.pause()
        }
        audioPlayerHyeeeehShort.currentTime = 0
        audioPlayerHyeeeehShort.play()
    }
    
    @IBAction func playFullHyeeeh(_ sender: Any) {
        
        let hyeeeeh = Bundle.main.path(forResource: "hyeeeeh", ofType: "m4a")
               do{
                   audioPlayerHyeeeehLong = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: hyeeeeh!))
               }catch{
                   print(error)
               }
        if audioPlayerHyeeeehLong.isPlaying{
            audioPlayerHyeeeehLong.pause()
        }
        audioPlayerHyeeeehLong.currentTime = 0
        audioPlayerHyeeeehLong.play()
    }
}

