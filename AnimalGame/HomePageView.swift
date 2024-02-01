//
//  HomePageView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 12/07/1445 AH.
//

import SwiftUI

struct HomePageView: View {
    @AppStorage("Kid_name") var Currentname : String = ""
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("backgroundColor").ignoresSafeArea()
                
                VStack {
                    Text("Welcome \(Currentname)")
                        .font(
                            Font.system(size: 44)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                    HStack {
                        
                        NavigationLink {
                            
                            
                            MapView()
                        }
                        
                        
                    label:{
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15).frame(width: 403, height: 403)
                                .foregroundStyle(.white).shadow(color: .black.opacity(0.75), radius: 2, x: 0, y: 4)
                            
                            VStack {
                                Image("Map")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 356, height: 262)
                                
                                Text("Map")
                                    .font(
                                        Font.system(size: 40)
                                            .weight(.bold)
                                    ).foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                
                            }.padding()
                            
                        }.padding()
                        
                    }
                        
                        Text("             ") //Here
                        
                        
                        
                        NavigationLink {
                            
                            //MyZoo view (Rahaf)
                            RahafView()
                            
                        }
                        
                    label:{
                        ZStack {
                            RoundedRectangle(cornerRadius: 15).frame(width: 403, height: 403)
                                .foregroundStyle(.white).shadow(color: .black.opacity(0.75), radius: 2, x: 0, y: 4)
                            
                            
                            VStack {
                                Image("MyZoo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 356, height: 262)
                                    .clipped()
                                
                                Text("My Zoo")
                                    .font(
                                        Font.system(size: 40)
                                            .weight(.bold)
                                    ).foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                            }.padding()
                            
                        }.padding()
                        
                    }.padding()
                    }.padding()
                }.padding()
                
            }
            
        }.navigationBarBackButtonHidden(true)
    }

    }
#Preview {
    HomePageView()
}
