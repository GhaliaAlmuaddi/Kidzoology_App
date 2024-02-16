//
//  animalListCard.swift
//  AnimalGame
//
//  Created by shomokh aldosari on 16/07/1445 AH.
//

import SwiftUI

struct animalListCard: View {
    var body: some View {
        VStack{
            Rectangle()
            .foregroundColor(.white)
            .frame(width: 150, height: 216)
            .background(.white)

            .cornerRadius(30)
            .shadow(color: .black.opacity(0.33), radius: 2, x: 0, y: 10)
            

        }
    }
}

#Preview {
    animalListCard()
}
