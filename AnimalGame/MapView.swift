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
                Text("Here").bold()
            }
        }
    }
}
#Preview {
    MapView()
}
