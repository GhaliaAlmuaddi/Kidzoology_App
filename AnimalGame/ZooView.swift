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
                  ZStack{
                      Image("zoo")
                          .resizable()
                          .frame(width: 1200, height: 840)
                      VStack(spacing: -10){
                      ZStack{
                          Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 1190, height: 95)
                              .background(Color(red: 0.95, green: 0.98, blue: 0.98))
                          
                              .blur(radius: 0)
                          
                          
                          Text("Drag your animals into your zoo")
                              .frame(width: 987, height: 40, alignment: .center)
                              .font(
                                  Font.system(  size: 35
                                             )
                                  .weight(.bold)
                              )
                          
                              .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                          HStack{
                              
                             
                                  ZStack{
                                      Rectangle()
                                          .foregroundColor(.clear)
                                          .frame(width: 177, height: 69)
                                          .background(Color(red: 0.75, green: 0.87, blue: 0.73))
                                          .cornerRadius(50)
                                      HStack{
                                         
                                          
                                          
                                          Image(currentImage)
                                              .resizable() // Make the image resizable
                                              .frame(width: 56, height: 62)
                                          
                                          Text(Currentname)
                                              .font(Font.custom("Inter", size: 25).weight(.bold))
                                              .lineSpacing(22)
                                              .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                      }
                                      
                                  }
                                  .padding()
                              
                              
                              Spacer()
                              Button(action:{
                                  playSound(sound:"ZooSound")
                              }){
                                  Image(systemName: "speaker.wave.3.fill")
                                      .resizable()
                                  
                                      .frame(width: 40 , height: 30)
                                      .foregroundColor(Color(red: 1, green: 0.55, blue: 0.26))
                                      .padding(3)
                              }
                              
                              
                              NavigationLink {
                                  HomePageView()
                              } label: {
                                  
                                  Image(systemName: "house.fill")
                                      .resizable()
                                      .padding(.trailing, 5.0)
                                      .frame(width: 40 , height: 30)
                                      .foregroundColor(Color(red: 1, green: 0.56, blue: 0.27))
                              }
                              
                              .padding(.trailing)
                              
                              
                          }
                         
                      }
                          Spacer()
                          ZStack{
                              HStack{
                                  Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 1096, height: 130)
                                      
                                      .cornerRadius(30)
                                      .blur(radius: 0)
                                  Spacer()
                                  Image(systemName: "chevron.right")
                                      .resizable()
                                  
                                      .frame(width: 36 , height: 43)
                                      .foregroundColor(Color.white)
                                      
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
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 327, y: 271)
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
                                                  droppedImages["Camel"] = droppedImage
                                                  
                                              }else{
                                                  
                                                  
                                                  // Return the image to its original rotation after shaking
                                                  withAnimation(Animation.easeInOut(duration: 0.2)) {
                                                      droppedImages["Camel"] = nil
                                                  }
                                              }
                                              
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
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
                          } else if animal.animal_name == "Horse" {//hours 2
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 929, y: 417)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Horse"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Horse"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 929, y: 417)
                                      }
                                  )
                          } else if animal.animal_name == "Sheep" {//Sheep3
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 746, y: 530)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Sheep"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Sheep"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 746, y: 530)
                                      }
                                  )
                          }//end
                          else if animal.animal_name == "Cow" {//Cow4
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 571, y: 550)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Cow"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Cow"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 571, y: 550)
                                      }
                                  )
                          }
                          //end
                          else if animal.animal_name == "Gazelle" {//Gazelle5
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 822, y: 353)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Gazelle"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Gazelle"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 822, y: 353)
                                      }
                                  )
                          }
                          else if animal.animal_name == "Wolf" {//Wolf6
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 837, y: 203)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Wolf"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Wolf"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 837, y: 203)
                                      }
                                  )
                          }
                          else if animal.animal_name == "Dog" {//Dog7
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 284, y: 471)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Dog"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Dog"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 284, y: 471)
                                      }
                                  )
                          }
                          else if animal.animal_name == "Pigeon" {//Pigeon8
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 906, y: 571)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Pigeon"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Pigeon"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 906, y: 571)
                                      }
                                  )
                          }//
                          else if animal.animal_name == "Hawk" {//Hawk9
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 641, y: 244)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Hawk"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Hawk"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 641, y: 244)
                                      }
                                  )
                          }
                          else if animal.animal_name == "Cat" {//Cat10
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 186, y: 475)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Cat"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Cat"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 186, y: 475)
                                      }
                                  )
                          }
                          else if animal.animal_name == "Sparrow" {//Pigeon11
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 1016, y: 571)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Sparrow"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Sparrow"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 1016, y: 571)
                                      }
                                  )
                          }
                          else if animal.animal_name == "Snake" {//Snake12
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 153, y: 571)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Snake"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Snake"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 153, y: 571)
                                      }
                                  )
                          }
                          else if animal.animal_name == "Scorpion" {//Scorpion13
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 246, y: 584)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Scorpion"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Scorpion"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 246, y: 584)
                                      }
                                  )
                          }
                          else if animal.animal_name == "Lizard" {//Lizard14
                              Circle()
                                  .fill(Color.c1)
                                  .frame(width: 100, height: 100)
                                  .position(x: 485, y: 312)
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
                                                  // Store the dropped image for Horse
                                                  droppedImages["Lizard"] = droppedImage
                                              }
                                          }
                                      }
                                      // Return true to indicate that the drop is accepted
                                      return true
                                  }
                                  .overlay(
                                      // Display the dropped image if available
                                      droppedImages["Lizard"].map {
                                          $0.resizable()
                                              .scaledToFit()
                                              .frame(width: 80, height: 80)
                                              .position(x: 485, y: 312)
                                      }
                                  )
                          }
                      }

              }
          }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ZooView()
}
