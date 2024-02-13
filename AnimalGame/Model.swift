
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
     var posx : Double
     var posy : Double
     var Animal_drag : Bool
     
     init(animal_name: String, animal_image: String,posx: Double , posy: Double,Animal_drag : Bool) {
         self.animal_name = animal_name
         self.animal_image = animal_image
         self.posx = posx
         self.posy = posy
         self.Animal_drag = Animal_drag
         
     }
}
