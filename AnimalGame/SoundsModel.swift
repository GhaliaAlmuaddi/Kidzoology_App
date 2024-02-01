//
//  SoundsModel.swift
//  AnimalGame
//
//  Created by Maryam Mohammad on 19/07/1445 AH.
//

//import SwiftUI
//import AVFoundation
//
//
//var audioPlayer: AVAudioPlayer?
//
//func playSound(sound: String){
//    if let path = Bundle.main.path(forResource: sound, ofType: "mp3"){
//        do{
//            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
//            audioPlayer?.play()
//        } catch {
//            print("ERROR, Couldn't find and play the sound")
//        }
//    }
//}
//
//func stopAudio(){
//    audioPlayer?.stop()
//    audioPlayer = nil
//}

import SwiftUI
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String) {
    let soundName = localizedSoundFileName(for: sound)
    if let path = Bundle.main.path(forResource: soundName, ofType: "mp3") {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR: Couldn't find and play the sound")
        }
    }
}

func stopAudio() {
    audioPlayer?.stop()
    audioPlayer = nil
}

private func localizedSoundFileName(for sound: String) -> String {
    let languageCode = Locale.current.languageCode
    var localizedSoundName = sound
    
    // Check the current language code and adjust the sound file name accordingly
    if languageCode == "ar" {
        
        localizedSoundName += "_ar"
    }
    
    return localizedSoundName
}
