
//
//  Model.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 13/07/1445 AH.
//

///import Foundation
import SwiftData
import CoreGraphics
@Model
 class Kid_animal {
    var animal_name : String = ""
    var animal_image : String = ""
    var level : String = ""
    var animal_energy : String = ""
     var posx : CGFloat
     var posy : CGFloat
     
     init(animal_name: String, animal_image: String, level: String, animal_energy: String,  posx: CGFloat , posy: CGFloat) {
         self.animal_name = animal_name
         self.animal_image = animal_image
         self.level = level
         self.animal_energy = animal_energy
         self.posx = posx
         self.posy = posy
     }
}
