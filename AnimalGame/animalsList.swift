//
//  animalsList.swift
//  AnimalGame
//
//  Created by shomokh aldosari on 16/07/1445 AH.
//

import SwiftUI

struct animalsList: View {
    let animals: [Animals] = [camel,horse,sheep, cow,gazelle, wolf,dog,pigeon,hawk, cat,sparrows, snake, scorpion,lizard]
    
    var body: some View {
       // NavigationStack{
        ZStack{
            Color("backgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 100){
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1353, height: 120)
                        .background(Color(red: 0.95, green: 0.98, blue: 0.98))
                    
                        .blur(radius: 0)
                    HStack{
                        Text("Select an animal please :")
                            .frame(width: 987, height: 40, alignment: .topLeading)
                            .font(
                                Font.system(  size: 40
                                           )
                                .weight(.bold)
                            )
                        
                            .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                        
                        Image(systemName: "speaker.wave.3.fill")
                            .resizable()
                        
                            .frame(width: 50 , height: 40)
                            .foregroundColor(Color(red: 0.57, green: 0.77, blue: 0.56))
                        
                        Image(systemName: "house.fill")
                            .resizable()
                            .padding(.leading, 5.0)
                            .frame(width: 50 , height: 40)
                            .foregroundColor(Color(red: 1, green: 0.56, blue: 0.27))
                    }
                    
                }
                
                
                
                ScrollView(.horizontal){
                    VStack(spacing: 40){
                        HStack(spacing:30){
                            
                            ForEach(animals.prefix(animals.count / 2)) { animal in
                                NavigationLink(destination: AnimalFactView(animalinfo: animal)) {
                                    ZStack{
                                        animalListCard()
                                        
                                        VStack{
                                            
                                            Image(animal.animalName)
                                                .resizable()
                                                .frame(width: 129, height: 139)
                                            
                                            Text(animal.animalImage)
                                                .font(.system(size: 24))
                                                .bold()
                                            
                                            
                                                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                            
                                                .frame(width: 136, height: 42, alignment: .center)
                                            
                                        }
                                        
                                    }
                                }
                            }
                            
                        }
                        
                        
                        HStack(spacing:30){
                            
                            ForEach(animals.suffix(animals.count / 2)) { animal in
                                NavigationLink(destination: AnimalFactView(animalinfo: animal)) {
                                ZStack{
                                    animalListCard()
                                    
                                    VStack{
                                        
                                        Image(animal.animalName)
                                            .resizable()
                                            .frame(width: 129, height: 139)
                                        
                                        Text(animal.animalImage)
                                            .font(.system(size: 24))
                                            .bold()
                                        
                                        
                                            .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                        
                                            .frame(width: 136, height: 42, alignment: .center)
                                        
                                    }
                                    
                                }
                            }
                            }
                            
                        }
                        .padding()
                    }
                }
                .padding(.leading,130)
                Spacer()
            }
            
        }
   // }
    }
}

#Preview {
    animalsList()
}
