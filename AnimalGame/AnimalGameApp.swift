//
//  AnimalGameApp.swift
//  AnimalGame
//
//  Created by Rahaf ALghuraibi on 11/07/1445 AH.
//

import SwiftUI

@main
struct AnimalGameApp: App {
    var body: some Scene {
        WindowGroup { 
            SplashView()
        }.modelContainer(for: [Kid_animal.self])
    }
}
