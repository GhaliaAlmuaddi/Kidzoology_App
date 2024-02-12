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
        NavigationStack{
            Color("backgroundColor")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink {
                    
                                                         HomePageView()
                    
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
        
        ZStack{
            Image("Map").resizable()
                
                .frame(width: 1200, height: 900)
            
            
            
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
              
                
                
            }
            
            
        }
        }.navigationBarBackButtonHidden(true)
        
    }
}
#Preview {
    MapView()
}
