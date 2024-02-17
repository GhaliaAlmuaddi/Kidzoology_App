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
        NavigationStack{
            Color("backgroundColor")
            
     
                           .toolbar {
                               ToolbarItem(placement: .principal) {
                                       VStack {
                                           Text("Arabian Peninsula Animals")
                                               .bold()
                                               .foregroundColor(.brownText)
                                       }
                                   }
                               ToolbarItemGroup(placement: .primaryAction) {
                                   Button(action:{
                                                                                       playSound(sound:"AnimalsListSound")
                                   }){
                                       Image(systemName: "speaker.wave.3.fill")
                                           .resizable()
                                       
                                           .frame(width: 40 , height: 30)
                                       .foregroundColor(Color(red: 1, green: 0.55, blue: 0.26))}
                                   
                                   NavigationLink {
                                                               HomePageView()
                                                           } label: {
                                   
                                                               Image(systemName: "house.fill")
                                                                   .resizable()
                                                                   .padding(.trailing, 5.0)
                                                                   .frame(width: 40 , height: 30)
                                                                   .foregroundColor(Color(red: 1, green: 0.56, blue: 0.27))
                                                           }.onDisappear {
                                                               stopAudio()
                                                           }

                                                       }
                               
                               ToolbarItem(placement: .navigationBarLeading) {
                                   NavigationLink {
                                   
                                                                        MapView()
                                   
                                                                } label: {
                                   
                                                                        Image(systemName: "arrow.backward")
                                                                            .resizable()
                                                                            .padding(.leading, 5.0)
                                                                            .frame(width: 45 , height: 35).foregroundColor(Color(red: 1, green: 0.55, blue: 0.26))
                                   
                                 }.onDisappear {
                                     stopAudio()
                                 }
                               }
                           }
                       
                           .toolbarBackground(

                               
                               Color.lightBackground,
                               
                               for: .navigationBar)
                           .toolbarBackground(.visible, for: .navigationBar)
                           .navigationBarTitleDisplayMode(.inline)
        ZStack{
            Color("backgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 200){
                
                Spacer()
                ScrollView(.horizontal){
                    VStack(spacing: 40){
                        HStack(spacing:40){
                            
                            ForEach(animals.prefix(animals.count / 2)) { animal in
                                NavigationLink(destination: AnimalFactView(animalinfo: animal)) {
                                    ZStack{
                                        animalListCard()
                                        
                                        VStack {
                                            
                                            Image(animal.animalImage)
                                                .resizable()
                                              .frame(width: 129, height: 139)
                                            
                                            Text(animal.animalName)
                                                .font(.system(size: 24))
                                                .bold()
                                            
                                            
                                                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                            
                                                .frame(width: 136, height: 42, alignment: .center)
                                            
                                        }
                                        
                                    }
                                }.onDisappear {
                                    stopAudio()
                                }
                            }
                            
                        }
                        
                        
                        HStack(spacing:40){
                            
                            ForEach(animals.suffix(animals.count / 2)) { animal in
                                NavigationLink(destination: AnimalFactView(animalinfo: animal)) {
                                ZStack{
                                    animalListCard()
                                    
                                    VStack{
                                        
                                        Image(animal.animalImage)
                                            .resizable()
                                            .frame(width: 129, height: 139)
                                        
                                        Text(animal.animalName)
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
                
                .padding(.leading,50)
                .padding(.trailing,50)
                .scrollIndicators(.hidden)
                Spacer()
            }
            
        }
        }.navigationBarBackButtonHidden(true)
    }
}


#Preview {
    animalsList()
}
