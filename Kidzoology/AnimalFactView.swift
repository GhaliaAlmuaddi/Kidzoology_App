//
//  AnimalFactView.swift
//  AnimalGame
//
//  Created by Maryam Mohammad on 13/07/1445 AH.
//
//  playSound(sound: animalinfo.factSound)
import SwiftUI
import AVFoundation

struct AnimalFactView: View {
    let animals: [Animals] = [camel,horse,sheep, cow,gazelle, wolf,dog,pigeon,hawk, cat,sparrows, snake, scorpion,lizard]
    let animalinfo: Animals
    var body: some View {
        NavigationStack{
            Color("backgroundColor")

                           .toolbar {
                               ToolbarItem(placement: .principal) {
                                       VStack {
                                           Text(" Animal Information")
                                               .bold()
                                               .foregroundColor(.brownText)
                                       }
                                   }
                               ToolbarItemGroup(placement: .primaryAction) {
                                   Button(action:{
                                       playSound(sound: animalinfo.factSound)
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
                                   
                                                                        animalsList()
                                   
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
                
                Color("backgroundColor").ignoresSafeArea()
               
                VStack(spacing: -100){
            Spacer()
                
                    ZStack{
                        
                        Rectangle()
                            .frame(width: 1116 , height: 530)
                            .cornerRadius(30)
                            .foregroundColor(.lightBackground)
                            
                        VStack{
                        
                        ForEach(animals) { animal in
                            if(animal.animalName == animalinfo.animalName){
                                
                                HStack{
                                    VStack{
                                        Text(animal.animalName)
                                            .font(.system(size: 95)).bold()
                                            .foregroundColor(.brownText)
                                        Text(animal.fact)
                                            .font(.system(size: 25))
                                            .foregroundColor(.brownText)
                                            
                                        Button(action:{
                                            playSound(sound: animal.itSound)
                                        }){
                                            Image(animal.animalImage)
                                                .resizable()
                                                .frame(width: 400 , height: 400)
                                        }
                                        
                                    }
                                    .frame(width: 470, height: 1000)
                                    .padding(.leading,50)
                                    
                                    VStack{
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 567 , height: 104)
                                                .cornerRadius(15)
                                                .foregroundColor(.lightYellow)
                                            HStack{
                                                Image("animalType")
                                                    .resizable()
                                                    .frame(width: 55 , height: 55)
                                                Text("Type:")
                                                    .font(.system(size: 40)).bold()
                                                    .foregroundColor(.brownText)
                                            }.frame(width: 555 , height: 104, alignment: .leading)
                                            
                                            Text(animal.type)
                                                .font(.system(size: 30))
                                                .foregroundColor(.brownText)
                                                .frame(width: 500 , height: 104, alignment: .trailing)
                                            
                                            
                                        }
                                        
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 567 , height: 104)
                                                .cornerRadius(15)
                                                .foregroundColor(.lightGreen)
                                            
                                            HStack{
                                                Image("animalFood")
                                                    .resizable()
                                                    .frame(width: 55 , height: 55)
                                                Text("Diet:")
                                                    .font(.system(size: 40)).bold()
                                                    .foregroundColor(.brownText)
                                            }.frame(width: 555 , height: 104, alignment: .leading)
                                            
                                            Text(animal.diet)
                                                .font(.system(size: 30))
                                                .foregroundColor(.brownText)
                                                .frame(width: 500 , height: 104, alignment: .trailing)
                                        }
                                        
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 567 , height: 104)
                                                .cornerRadius(15)
                                                .foregroundColor(.lightBlue)
                                            
                                            HStack{
                                                Image("animalHabitat")
                                                    .resizable()
                                                    .frame(width: 55 , height: 55)
                                                Text("Habitat:")
                                                    .font(.system(size: 40)).bold()
                                                    .foregroundColor(.brownText)
                                            }.frame(width: 555 , height: 104, alignment: .leading)
                                            
                                            Text(animal.habitat)
                                                .font(.system(size: 30))
                                                .foregroundColor(.brownText)
                                                .frame(width: 500 , height: 104, alignment: .trailing)
                                        }
                                        
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 567 , height: 104)
                                                .cornerRadius(15)
                                                .foregroundColor(.lightOrange)
                                            
                                            HStack{
                                                Image("animalSkin")
                                                    .resizable()
                                                    .frame(width: 55 , height: 55)
                                                Text("Skin:")
                                                    .font(.system(size: 40)).bold()
                                                    .foregroundColor(.brownText)
                                            }.frame(width: 555 , height: 104, alignment: .leading)
                                            
                                            Text(animal.skinCover)
                                                .font(.system(size: 30))
                                                .foregroundColor(.brownText)
                                                .frame(width: 500 , height: 104, alignment: .trailing)
                                        }
                                        NavigationLink(destination: QuizView(selectedAnimal:animalinfo)){
                                            ZStack{
                                                Rectangle()
                                                    .foregroundColor(.clear)
                                                    .frame(width: 310, height: 84)
                                                    .background(Color.orangMap)
                                                    .cornerRadius(50)
                                                    .shadow(color: .gray.opacity(0.25), radius: 2, x: 0, y: 4)
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 50)
                                                            .stroke(Color(red: 0.96, green: 0.78, blue: 0.14), lineWidth: 0)
                                                        
                                                    )
                                                
                                                Text("Start the test")
                                                    .font(.system(size: 32)).bold()
                                                    .kerning(1.92)
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(.white)
                                                    .frame(width: 319, alignment: .center)
                                            }
                                            .padding(.top, 80)
                                        }.onDisappear {
                                            stopAudio()
                                        }
                                    }.padding(.trailing,50)
                                        
                                    
                                }.padding(.top, 350)
                            }}
                        
                        }.padding(.bottom, 150)
                    }
                    
                    
                }
                
              
              
                
                
                    
                }
                
          
            
        }.navigationBarBackButtonHidden(true)    }
}



#Preview {
    AnimalFactView(animalinfo: camel)
}
