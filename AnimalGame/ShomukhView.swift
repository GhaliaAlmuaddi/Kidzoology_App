//
//  ShomukhView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 13/07/1445 AH.
//

import SwiftUI
import SwiftData

struct ShomukhView: View {
    
    @AppStorage("Kid_name") var Currentname : String = "" //هذا الاسم الي انحفظ اسم الطفل ، بتحتاجين بس تعرضين المتغير كرنت نيم
 
    
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss

    var body: some View {
       // Text("Hello, World!")
        Button("save"){
            save() //هذا البوتون حطيته عشان اجرب اذا يحفظ اولا
        }
        
    }
    
    
   func save () {
      let Own_animal = Kid_animal(animal_name: "A" , animal_image: "6", level: "g", animal_energy: "g")
//        //تعبينها بالبيانات الي جاتك من المودل
//    حطيت اشياء عشوائيه عشان اجرب
//
       context.insert(Own_animal) // هنا خلاص بيتخزن الاوبجكت باري السويفت ديتا وبتنحفظ لوكلي
//
    }
    
    
}

#Preview {
    ShomukhView()
}

