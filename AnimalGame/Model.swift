
//
//  Model.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 13/07/1445 AH.
//

///import Foundation
import SwiftData

@Model
 class Kid_animal {
    var animal_name : String = ""
    var animal_image : String = ""
    var level : String = ""
    var animal_energy : String = ""
     
     init(animal_name: String, animal_image: String, level: String, animal_energy: String) {
         self.animal_name = animal_name
         self.animal_image = animal_image
         self.level = level
         self.animal_energy = animal_energy
     }
}
