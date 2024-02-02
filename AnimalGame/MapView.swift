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
            
            NavigationLink {
                animalsList()
            }
            label :{
                Text("Click to Start your journey").bold().lineLimit(2)
                    .multilineTextAlignment(.center)
            }
            .frame(width: 150.0, height: 60.0)
            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("c2")/*@END_MENU_TOKEN@*/)
            .border(/*@START_MENU_TOKEN@*/Color("c2")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .offset(x: -90 , y: -50)
            
        }
    }
}
#Preview {
    MapView()
}
