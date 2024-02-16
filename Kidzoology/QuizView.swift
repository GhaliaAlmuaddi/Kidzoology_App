//
//  Quiz.swift
//  AnimalGame
//
//  Created by Amal Abughazaleh on 24/01/2024.
//

import SwiftUI
struct Quiz: View {
    var body: some View {
        ZStack{
            Color("backgroundColor")
                .ignoresSafeArea()
            VStack(spacing:50){
                Text("Choose the correct answer:")
                    .frame(width: 687, height: 77, alignment: .topLeading)
                    .font(
                        Font.system(  size: 35)
                    .weight(.bold)
                    )
                   
                    .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
              
                
                VStack(spacing:50){
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 750, height: 350, alignment: .center)
                            .background(Color(red: 0.95, green: 0.98, blue: 0.98))
                            .cornerRadius(30)
                        VStack(spacing:70){
                            Text("1- Which type of animals do cows belong to?")
                                .font(Font.system(size: 35))
                                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                            
                                .frame(width:700, height: 49, alignment: .topLeading)
                                .padding(.leading, 30.0)
                            
                            HStack(spacing:100){
                                ZStack{Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 235, height: 104)
                                        .background(Color(red: 1, green: 0.96, blue: 0.81))
                                    
                                        .cornerRadius(15)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                    
                                    Text("Herbivore")
                                        .font(Font.system(size: 24))
                                        .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                    
                                    
                                    
                                    
                                }
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 235, height: 104)
                                        .background(Color(red: 1, green: 0.96, blue: 0.81))
                                    
                                        .cornerRadius(15)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                    
                                    Text("Herbivore")
                                        .font(Font.system(size: 24))
                                    .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                    
                                    
                                }}
                        }}
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 750, height: 350, alignment: .center)
                            .background(Color(red: 0.95, green: 0.98, blue: 0.98))
                            .cornerRadius(30)
                        VStack(spacing:70){
                            Text("1- Which type of animals do cows belong to?")
                                .font(Font.system(size: 35))
                                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                            
                                .frame(width:700, height: 49, alignment: .topLeading)
                                .padding(.leading, 30.0)
                            
                            HStack(spacing:100){
                                ZStack{Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 235, height: 104)
                                        .background(Color(red: 1, green: 0.96, blue: 0.81))
                                    
                                        .cornerRadius(15)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                    
                                    Text("Herbivore")
                                        .font(Font.system(size: 24))
                                        .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                    
                                    
                                    
                                    
                                }
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 235, height: 104)
                                        .background(Color(red: 1, green: 0.96, blue: 0.81))
                                    
                                        .cornerRadius(15)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                    
                                    Text("Herbivore")
                                        .font(Font.system(size: 24))
                                    .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                    
                                    
                                }}
                        }}
                    
                    
                  
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 310, height: 84)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 1, green: 0.55, blue: 0.26), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.95, green: 0.72, blue: 0.49).opacity(0.58), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.5, y: 0),
                                endPoint: UnitPoint(x: 0.66, y: -2.79)
                            )
                        )
                        .cornerRadius(50)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                    
                    Text("Submit")
                        .font(
                            Font.system(  size: 32) .weight(.bold))
                        .foregroundColor(.white)
                    
                }
            }}
        
    }
}

#Preview {
    Quiz()
}
