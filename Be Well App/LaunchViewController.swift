//
//  LaunchViewController.swift
//  Be Well App
//
//  Created by Bobby Reay on 9/30/19.
//  Copyright © 2019 Bobby Reay. All rights reserved.
//

import UIKit
import AVFoundation

class LaunchViewController: UIViewController, AVAudioPlayerDelegate {

    @IBOutlet weak var launchLabel: UILabel!
    
    var audioPlayer: AVAudioPlayer!
       
    func fadeViewInThenOut(view : UIView, delay: TimeInterval) {
        
        let backgroundMusic = Bundle.main.path(forResource: "background_music", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: backgroundMusic!))
            
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
            
            // Causes to play audio even when phone is in silent mode
//            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
        } catch{
            print(error)
        }
        
        // Causes to play audio even when phone is in silent mode
       
        
        audioPlayer.play()
        if audioPlayer.isPlaying {
            audioPlayer.setVolume(0.0, fadeDuration: 17.0)
        }

        let animationDuration = 7.0

        // Fade in the view
        UIView.animate(withDuration: 1.5, delay: 2.0, options: .curveEaseInOut, animations: { () -> Void in
            view.alpha = 1
            }) { (Bool) -> Void in

                // After the animation completes, fade out the view after a delay
                UIView.animate(withDuration: animationDuration, delay: 8, options: .curveEaseInOut, animations: { () -> Void in
                    view.alpha = 0
                    },
                               completion: {finished in self.performSegue(withIdentifier: "launchSegue", sender: self)})
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//            .setVolume(_ volume: 0.5, fadeDuration duration: 3)

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
    fadeViewInThenOut(view: launchLabel, delay: 3.0)

    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
