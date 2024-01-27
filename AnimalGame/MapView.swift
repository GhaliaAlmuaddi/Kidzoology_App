//
//  MapView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 12/07/1445 AH.
//

import SwiftUI

struct MapView: View {
    
    @AppStorage("Kid_image") var currentImage: String = ""

    
    
    var body: some View {
      //  let Images = CurrentImageSelection2
        ZStack{
            Image("Map").resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 1288, height: 966)
            
         // Text("Welcome \(currentImage)") //

           // Text(Currentname)
           Image(currentImage)
          .resizable()
      .aspectRatio(contentMode: .fill)
           .frame(width: 98, height: 137)
          .clipped()
        }
    }
}
#Preview {
    MapView()
}
