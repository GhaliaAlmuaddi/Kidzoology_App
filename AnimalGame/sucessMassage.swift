//
//  sucessMassage.swift
//  AnimalGame
//
//  Created by shomokh aldosari on 16/07/1445 AH.
//

import SwiftUI
import SwiftData

struct sucessMassage: View {
    @AppStorage("Kid_name") var Currentname : String = ""
    let rewardAnimal: Animals
    
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    @State private var isSaved: Bool = false
    var body: some View {
        NavigationStack{
        ZStack{
            
            Color("backgroundColor")
                .ignoresSafeArea()
            
            
            
            sucessMassageCard()
            
            VStack{
                
                Text("Great job, \(Currentname)")
                    .font(.system(size: 40))
                    .bold()
                    .kerning(0.8)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                    .frame(width: 450, height: 45, alignment: .center)
                    .padding(.top, 190)
                Text("Reward")
                    .font(.system(size: 30))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 1, green: 0.55, blue: 0.26))
                
                    .frame(width: 124, height: 1, alignment: .top)
                    .padding(.top, 10)
                
                
                Image(rewardAnimal.animalImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 129, height: 139)
                    .clipped()
                    .padding(.top, 40)
                
                
                Text("This animal has been added to your zoo")
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                    .frame(width: 510, height: 39, alignment: .top)
                
                Button(action: {
                    save()
                    isSaved = true
                }) {
                    Text("Ok").foregroundColor(.white)
                        .font(.system(size: 24))
                        .bold()
                        .frame(width: 193, height: 51)
                        .background(Color.orangMap)
                        .cornerRadius(35)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        .padding(.top, 50)
                    
                    
                }
                
            }
            
            
            
            if isSaved {
                ZooView()
                
            }
            
        }
    }.navigationBarBackButtonHidden(true)
    }
    func save () {
        let Own_animal = Kid_animal(animal_name: rewardAnimal.animalName , animal_image: rewardAnimal.animalImage, posx: rewardAnimal.posx , posy: rewardAnimal.posy , Animal_drag: rewardAnimal.Animal_drag)

        context.insert(Own_animal)
 
       
     }

}

struct sucessMassageCard: View{
    var body: some View {
        ZStack{

            Rectangle()
            .foregroundColor(.clear)
            .frame(width: 646, height: 481)
            .background(Color(red: 0.95, green: 0.98, blue: 0.98))
            .cornerRadius(30)
            .offset(y:100)
          Image("rightSucess")
                .resizable()
                .frame(width: 184.41,height: 115.22)
                .offset(x:330 ,y:-160)
            
            Image("leftSucess")
                  .resizable()
                  .frame(width: 184.41,height: 115.22)
                  .offset(x:-330 ,y:-160)
        Image("sucessRectangle")
                .resizable()
                .frame(width: 646.78, height: 140.75)
                .offset(y:-190)
            Image("stars")
                .resizable()
                .frame(width: 424, height: 150)
                .offset(y:-270)
                
            
            
        }
    }
}

#Preview {
    sucessMassage( rewardAnimal: camel)
}
