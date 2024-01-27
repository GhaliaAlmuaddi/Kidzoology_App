//
//  RahafView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 13/07/1445 AH.
//

import SwiftUI
import SwiftData


struct RahafView: View {
    @Environment(\.modelContext) var context
    @Query var OwnAnimal : [Kid_animal] //هذي اري بيكون فيها كل الحيوانات الي فاز فيهم الطفل وتخزنو من صفحة شموخ، تحتاجين  تعرضين البيانات منها زي صور الحيوانات بالسكرول
    
    
    var body: some View {
        Text("Rahaf")
        ForEach(OwnAnimal) { animal in
            Text(animal.animal_name)
        } // هنا كنت ابغى اجرب اعرضهم، انتي اعرضيهم بالطريقه الي تناسبك، لكن لازم يكون فيه بيانات اوريدي تخزنت من صفحة شموخ عشان ينعرض شي في الشاشه
    }
}

#Preview {
    RahafView()
}

