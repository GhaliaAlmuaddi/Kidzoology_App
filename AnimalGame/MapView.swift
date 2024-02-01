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
        NavigationStack {
            //  let Images = CurrentImageSelection2
            ZStack{
                Image("Map").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 1288, height: 966)
          
                
                        NavigationLink {
                            HomePageView()
                        } label: {
                            
                            Image(systemName: "house.fill")
                                .resizable()
                                .padding(.leading, 5.0)
                                .frame(width: 40 , height: 30)
                                .foregroundColor(Color(red: 1, green: 0.56, blue: 0.27))
                  
                        }.offset(x:560,y:-360)

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
        }.navigationBarBackButtonHidden(true)
    }
}
#Preview {
    MapView()
}
