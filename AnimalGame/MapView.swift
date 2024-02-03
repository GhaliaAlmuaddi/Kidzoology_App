//
//  MapView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 12/07/1445 AH.
//
import SwiftUI

struct MapView: View {
    
 

   @AppStorage("imageKid") var currentImage: String = ""

    
    var body: some View {
      //  let Images = CurrentImageSelection2
        ZStack{
            Image("Map").resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 1288, height: 966)
            
         // Text("Welcome \(currentImage)") //

         Image(currentImage+"1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 139, height: 174)
                .clipped()
            
            ZStack{
                Triangle()
                    .fill(.orangMap)
                    .frame(width: 36, height: 47)
                    .padding(.top, -73)
                    .padding(.trailing, 16)
                
                NavigationLink {
                    animalsList()
                }
                label :{
                    Text("Click to Start your journey").bold().lineLimit(2)
                        .multilineTextAlignment(.center)
                }
                .frame(width: 150.0, height: 60.0)
                
                .foregroundColor(.white)
                .background(Color.orangMap)
                .cornerRadius(50)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                .padding(.top, -80)
                .padding(.trailing, 182)
                //.offset(x: -90 , y: -50)
                
                
            }
            
            
        }
        
    }
}
#Preview {
    MapView()
}
