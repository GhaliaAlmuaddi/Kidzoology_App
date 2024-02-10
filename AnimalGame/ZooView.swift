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
    // @State private var fruitOffset = CGSize.zero
    @Environment(\.modelContext) var context
    @Query var OwnAnimal : [Kid_animal] //هذي اري بيكون فيها كل الحيوانات الي فاز فيهم الطفل وتخزنو من صفحة شموخ، تحتاجين  تعرضين البيانات منها زي صور الحيوانات بالسكرول
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
                                                   .resizable() // Make the image resizable
                                                   .frame(width: 56, height: 50)
                                               
                                               Text(Currentname)
                                                   .font(Font.custom("Inter", size: 25).weight(.bold))
                                                   .lineSpacing(22)
                                                   .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                           }
                                           
                                       }
                                       .padding(.bottom, 19)
     
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
                    ZStack{
                       
                        
                            
                    
                        
                    }
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
                            HStack(spacing: 10) { // Adjust spacing between images as needed
                                ForEach(OwnAnimal, id: \.self) { animal in
                                    VStack {
                                        Image(animal.animal_image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                        
                                            .frame(width: 100, height: 100) // Adjust the size as needed
                                        //Text("done")
                                            .draggable(Image(animal.animal_image))
                                        
                                    }
                                }
                                
                                
                            }
                            
                            
                        }
                        .padding()
                    }
                    .padding(.top, 550)
                    
                }
                .padding()
                
                
                ForEach(OwnAnimal, id: \.self) { animal in
                    if animal.animal_name == "Camel" {//camel 1
                        
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
                            //x: 327, y: 271
                            //getPositionForAnimal(animalName: animal.animal_name)
                                .position(x : 327, y: 271)
                                .onDrop(of: ["public.image"], isTargeted: nil) { providers, location in
                                    // Check if the dropped item is an image
                                    guard let provider = providers.first else {
                                        return false
                                    }
                                    // Check if the provider can load an object of the specified type
                                    if provider.canLoadObject(ofClass: UIImage.self) {
                                        _ = provider.loadObject(ofClass: UIImage.self) { image, error in
                                            if let image = image as? UIImage {
                                                // Convert UIImage to SwiftUI's Image
                                                let droppedImage = Image(uiImage: image)
                                                // Store the dropped image for Camel
                                                //                                                  droppedImages["Camel"] = droppedImage
                                                //                                                  updateAnimalPosition(animalName: animal.animal_name, offsetX: location.x, offsetY: location.y)
                                            }else{
                                                
                                                
                                                // Return the image to its original rotation after shaking
                                                withAnimation(Animation.easeInOut(duration: 0.2)) {
                                                    droppedImages["Camel"] = nil
                                                }
                                            }
                                            
                                        }
                                    }
                                    // Return true to indicate that the drop is accepted
                                    animal.Animal_drag = true
                                    return true
                                    
                                }
                                .overlay(
                                    // Display the dropped image if available
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
//            .onAppear {
//                fetchanimal()
//                
//            }
    }
    
//    func fetchanimal(){
//        let fetchDescriptor = FetchDescriptor<Kid_animal>()
//        
//        do {
//            let animals = try context.fetch(fetchDescriptor)
//            
//            for animal in animals {
//                print("Found \(animal.animal_name)")
//            }
//        } catch {
//            print("Failed to load Movie model.")
//        }
//    }
    
    
//    func getPositionForAnimal(animalName: String) -> CGPoint {
//        if let animalPosition = OwnAnimal.first(where: { $0.animal_name == animalName }) {
//            return CGPoint(x: animalPosition.posx, y: animalPosition.posy)
//        } else {
//            
//            return CGPoint(x: 327, y: 271)
//        }
//    }
    
    //    func updateAnimalPosition(animalName: String, offsetX: CGFloat, offsetY: CGFloat) {
    //            let index = OwnAnimal.firstIndex(where: { $0.animal_name == animalName }) {
    //               OwnAnimal[index].posx = CGFloat(offsetX)
    //               OwnAnimal[index].posy = CGFloat(offsetY)
    //               print(OwnAnimal[index].posy)
    ////           } else {
    ////               let Own_animal = Kid_animal(animal_name: animalName, animal_image: "6", level: "g", animal_energy: "g", posx:  offsetX, posy:  offsetY, Animal_drag: <#Bool#>)
    ////
    ////
    ////               context.insert(Own_animal)
    ////
    ////           }
    //       }
    //}
}
#Preview {
    ZooView()
}
