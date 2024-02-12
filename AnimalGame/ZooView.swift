//
//  ZooView.swift
//  AnimalGame
//
//  Created by shomokh aldosari on 23/07/1445 AH.
//

import SwiftUI
import SwiftData

import UniformTypeIdentifiers

struct ZooView: View {

    @Environment(\.modelContext) var context
    @Query var OwnAnimal : [Kid_animal]
    @AppStorage("imageKid") var currentImage: String = ""
    @AppStorage("Kid_name") var Currentname : String = ""
    
    @State private var animalOffsets = Array(repeating: CGSize.zero, count: 0)
    @State private var animaloffset = CGSize.zero
    @State private var dropImage: Image?
    @State private var images: [Image] = []
    @State private var droppedImages: [String: Image] = [:]
    
    var body: some View {
        NavigationStack{
        
            Text("")
                       
                       
                           
                           .toolbar {
                               ToolbarItem(placement: .principal) {
                                       VStack {
                                           Text("My Zoo")
                                               .bold()
                                               .foregroundColor(.brownText)
                                       }
                                   }
                               ToolbarItemGroup(placement: .primaryAction) {
                                   Button(action:{
                                       playSound(sound:"ZooSound")
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
                                   HStack{
                                       
                                       
                                       ZStack{
                                           Rectangle()
                                               .foregroundColor(.clear)
                                               .frame(width: 180, height: 50)
                                               .background(Color(red: 0.75, green: 0.87, blue: 0.73))
                                               .cornerRadius(50)
                                           HStack{
                                               
                                               
                                               
                                               Image(currentImage)
                                                   .resizable()
                                                   .frame(width: 56, height: 50)
                                               Spacer()
                                               Text(Currentname)
                                                   .font(Font.custom("Inter", size: 20))
                                                   .lineSpacing(22)
                                                   .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                           }
                                           .padding()
                                       }
                                       .padding(.bottom, 10)
     
                                   }
                               }
                               
                           }
            
           
                       
                           .toolbarBackground(

                               
                               Color.lightBackground,
                               
                               for: .navigationBar)
                           .toolbarBackground(.visible, for: .navigationBar)
                           .navigationBarTitleDisplayMode(.inline)
            ZStack{
                Image("zoo")
                    .resizable()
                    .frame(width: 1200, height: 840)
                VStack(spacing: -10){
                   
                    Spacer()
                    ZStack{
                        HStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 1096, height: 130)
                            
                                .cornerRadius(30)
                                .blur(radius: 0)
                           
                            
                        }
                        .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(OwnAnimal, id: \.self) { animal in
                                    VStack {
                                        if (animal.Animal_drag == false){
                                            Image(animal.animal_image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                            
                                                .frame(width: 100, height: 100)
                                                .draggable(Image(animal.animal_image))
                                            
                                        }
                                    }
                                    
                                    
                                }}
                            
                            
                        }
                        .padding()
                    }
                    .padding(.top, 550)
                    
                }
                .padding()
                
                
                ForEach(OwnAnimal, id: \.self) { animal in
                    if animal.animal_name == "Camel" {
                        
                        if animal.Animal_drag == true
                        {
                            Image(animal.animal_image).resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .position(x: 327, y: 271)
                            
                        }
                        else {
                            Circle()
                                .fill(Color.c1)
                                .frame(width: 100, height: 100)
                            
                                .position(x : 327, y: 271)
                                .onDrop(of: ["public.image"], isTargeted: nil) { providers, location in
                                    
                                    guard let provider = providers.first else {
                                        return false
                                    }
                                    
                                    if provider.canLoadObject(ofClass: UIImage.self) {
                                        _ = provider.loadObject(ofClass: UIImage.self) { image, error in
                                            if let image = image as? UIImage {
                                               
                                                let droppedImage = Image(uiImage: image)
                                                                                                 droppedImages["Camel"] = droppedImage
                                              
                                            }else{
                                                
                                                
                                                
                                                withAnimation(Animation.easeInOut(duration: 0.2)) {
                                                    droppedImages["Camel"] = nil
                                                }
                                            }
                                            
                                        }
                                    }
                                  
                                    animal.Animal_drag = true
                                    return true
                                    
                                }
                                .overlay(
                                    
                                    droppedImages["Camel"].map {
                                        $0.resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80)
                                            .position(x: 327, y: 271)
                                        
                                    }
                                    
                                    
                                )
                        }
                        
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)

    }
    

}
#Preview {
    ZooView()
}
