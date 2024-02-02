//
//  RahafView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 13/07/1445 AH.
//

import SwiftUI
import SwiftData

import UniformTypeIdentifiers

struct RahafView: View {
   // @State private var fruitOffset = CGSize.zero
    @Environment(\.modelContext) var context
    @Query var OwnAnimal : [Kid_animal] //هذي اري بيكون فيها كل الحيوانات الي فاز فيهم الطفل وتخزنو من صفحة شموخ، تحتاجين  تعرضين البيانات منها زي صور الحيوانات بالسكرول
    @State private var animalOffsets = Array(repeating: CGSize.zero, count: 0)
    @State private var animaloffset = CGSize.zero
    @State private var dropImage: Image?
    @State private var images: [Image] = []
    @State private var droppedImages: [String: Image] = [:]
    var body: some View {
        ZStack{
            Color.grayy
                .ignoresSafeArea()
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 1353, height: 140)
                    .background(Color(red: 0.95, green: 0.98, blue: 0.98))
                
                    .blur(radius: 0)
                    .offset( x: 500, y: -20)
            Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 177, height: 69)
                    .background(Color(red: 0.75, green: 0.87, blue: 0.73))
                    .cornerRadius(50)
               
        }.offset( x: -500, y: -320)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 1194, height: 1)
                .background(Color(red: 0.49, green: 0.32, blue: 0.09))
                .offset(x: 0, y: -250)
            
            Image("export 6 5")
            .resizable() // Make the image resizable
            .frame(width: 56, height: 62)
           .offset(x: -550, y: -320)
            Text("Ahmad")
                .font(Font.custom("Inter", size: 25).weight(.bold))
                .lineSpacing(22)
                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                .offset(x: -480, y: -320)
            Text("Drag your animals into your zoo")
                .font(Font.custom("Comfortaa", size: 40).weight(.bold))
                .lineSpacing(22)
                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                .offset(x: 0, y: -330)
//            Image(systemName: "speaker.wave.3.fill")
//            .resizable()
//            .frame(width: 50 , height: 40)
//            .foregroundColor(Color(red: 0.57, green: 0.77, blue: 0.56))
//            .offset(x: 400, y: -330)
            
            Button(action:{
                                        playSound(sound:"ZooSound_ar")
                                    }){
                                        Image(systemName: "speaker.wave.3.fill")
                                            .resizable()
                                        
                                            .frame(width: 40 , height: 30)
                                            .foregroundColor(Color(red: 1, green: 0.55, blue: 0.26))
                                            .padding(3)
                                            .offset(x: 400, y: -330)
                                    }
//            Image(systemName: "house.fill")
//            .resizable()
//            .padding(.leading, 5.0)
//            .frame(width: 50 , height: 40)
//            .foregroundColor(Color(red: 1, green: 0.56, blue: 0.27))
//            .offset(x: 500, y: -330)
           // Text("iuyt")
            NavigationLink {
                HomePageView()
            } label: {
                    
                Image(systemName: "house.fill")
                    .resizable()
                    .padding(.leading, 5.0)
                    .frame(width: 40 , height: 30)
                    .foregroundColor(Color(red: 1, green: 0.56, blue: 0.27))
                    .offset(x: 500, y: -330)
               // Text("")
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 1194, height: 621)
                .background(
                   Image("zoo")
                    .resizable()
                    .frame(width: 1194, height: 580)
                ).offset(x: 0, y: 20)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 1096, height: 130)
                .background(Color(red: 0.95, green: 0.98, blue: 0.98))
                .cornerRadius(30)
                .blur(radius: 0)
                .offset(x: 0, y: 330)
        
                 //   .offset(x: 100, y: 320)
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
               
                    
            }.offset(x:130, y:330)
           
                                          
        
            ForEach(OwnAnimal, id: \.self) { animal in
                if animal.animal_name == "Camel" {//camel 1
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 400, y: 350)
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
                                    .position(x: 400, y: 350)
                            }
                        )
                } else if animal.animal_name == "Horse" {//hours 2
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 1050, y: 450)
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
                                    .position(x: 1050, y: 450)
                            }
                        )
                }else if animal.animal_name == "Sheep" {//Sheep3
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 850, y: 530)
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
                                    .position(x: 850, y: 530)
                            }
                        )
                }//end
                else if animal.animal_name == "Cow" {//Cow4
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 671, y: 580)
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
                                    .position(x: 671, y: 580)
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
                        .position(x: 900, y: 250)
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
                                    .position(x: 900, y: 250)
                            }
                        )
                }
                else if animal.animal_name == "Dog" {//Dog7
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 400, y: 471)
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
                                    .position(x: 400, y: 471)
                            }
                        )
                }
                else if animal.animal_name == "Pigeon" {//Pigeon8
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 1000, y: 571)
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
                                    .position(x: 1000, y: 571)
                            }
                        )
                }//
                else if animal.animal_name == "Hawk" {//Hawk9
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 700, y: 300)
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
                                    .position(x: 700, y: 300)
                            }
                        )
                }
                else if animal.animal_name == "Cat" {//Cat10
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 286, y: 475)
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
                                    .position(x: 286, y: 475)
                            }
                        )
                }
                else if animal.animal_name == "Sparrow" {//Pigeon11
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 1100, y: 571)
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
                                    .position(x: 1100, y: 571)
                            }
                        )
                }
                else if animal.animal_name == "Snake" {//Snake12
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 253, y: 571)
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
                                    .position(x: 253, y: 571)
                            }
                        )
                }
                else if animal.animal_name == "Scorpion" {//Scorpion13
                    Circle()
                        .fill(Color.c1)
                        .frame(width: 100, height: 100)
                        .position(x: 346, y: 584)
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
                                    .position(x: 346, y: 584)
                            }
                        )
                }
                else if animal.animal_name == "Lizard" {//Lizard14
                    Circle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                        .position(x: 585, y: 330)
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
                                    .position(x: 585, y: 330)
                            }
                        )
                }
            }
        }

        
    }
}

#Preview {
    RahafView()
}
