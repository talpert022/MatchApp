//
//  SoundManager.swift
//  MatchApp
//
//  Created by Tommy Alpert on 12/10/19.
//  Copyright © 2019 Tommy Alpert. All rights reserved.
//

import Foundation
import AVFoundation

class SoundManager {
    
    var audioPlayer: AVAudioPlayer?
    
    enum SoundEffect {
        case flip
        case match
        case nomatch
        case shuffle
    }
    
    func playSound(effect: SoundEffect) {
        
        var soundFileName = ""
        
        switch effect {
            
            case .flip:
                soundFileName = "cardflip"
                
            case .match:
                soundFileName = "dingcorrect"
                
            case .nomatch:
                soundFileName = "dingwrong"
                
            case .shuffle:
                soundFileName = "shuffle"
            
        }
        // Get the path to the reosurce
        let bundlePath = Bundle.main.path(forResource: soundFileName, ofType: ".wav")
        
        // Check that it's not nil
        guard bundlePath != nil else {
            return
        }
        
        let url = URL(fileURLWithPath: bundlePath!)
        
        do {
            
            // Create the audio player
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            
            // Play the sound effect
            audioPlayer?.play()
        }
        catch {
            print("Couldn't create an audio player")
            return
        }
    }
}
