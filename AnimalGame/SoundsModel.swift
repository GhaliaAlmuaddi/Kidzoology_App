//
//  SoundsModel.swift
//  AnimalGame
//
//  Created by Maryam Mohammad on 19/07/1445 AH.
//

import SwiftUI
import AVFoundation


var audioPlayer: AVAudioPlayer?

func playSound(sound: String){
    if let path = Bundle.main.path(forResource: sound, ofType: "mp3"){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR, Couldn't find and play the sound")
        }
    }
}

func stopAudio(){
    audioPlayer?.stop()
    audioPlayer = nil
}
