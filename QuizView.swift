//
//  Quiz.swift
//  AnimalGame
//
//  Created by Amal Abughazaleh on 24/01/2024.
//

import SwiftUI
struct QuizView: View {
    var body: some View {
        ZStack{
            Color("backgroundColor")
                .ignoresSafeArea()
            VStack(spacing:40){
                ZStack{
                    Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 1353, height: 120)
                    .background(Color(red: 0.95, green: 0.98, blue: 0.98))

                    .blur(radius: 0)
                    HStack{
                        Text("Choose the correct answer:")
                            .frame(width: 987, height: 40, alignment: .topLeading)
                            .font(
                                Font.system(  size: 40
                                           )
                                .weight(.bold)
                            )
                        
                            .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                        
                        Image(systemName: "speaker.wave.3.fill")
                            .resizable()
                       
                            .frame(width: 50 , height: 40)
                            .foregroundColor(Color(red: 0.57, green: 0.77, blue: 0.56))
                        
                        Image(systemName: "house.fill")
                            .resizable()
                            .padding(.leading, 5.0)
                            .frame(width: 50 , height: 40)
                            .foregroundColor(Color(red: 1, green: 0.56, blue: 0.27))
                    }
                }
                
          
                
                VStack(spacing:20){
                    ZStack{
                       
                              
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 950, height: 250, alignment: .center)
                            .background(Color(red: 0.95, green: 0.98, blue: 0.98))
                            .cornerRadius(30)
                        VStack(spacing:50){
                            Text(camel.ques1)
                                .font(Font.system(size: 35))
                                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                            
                                .frame(width:900,  alignment: .topLeading)
                              
                            
                            HStack(spacing:100){
                                Button {
                                    
                                } label: {
                                    
                                    ZStack{Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 235, height: 95)
                                            .background(Color(red: 1, green: 0.96, blue: 0.81))
                                        
                                            .cornerRadius(15)
                                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                        
                                        Text(camel.choices1[0])
                                            .font(Font.system(size: 30))
                                            .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                        
                                        
                                    }
                                    
                                }
                                Button {
                                    
                                } label: {
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 235, height: 95)
                                            .background(Color(red: 1, green: 0.96, blue: 0.81))
                                        
                                            .cornerRadius(15)
                                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                        
                                        Text(camel.choices1[1])
                                            .font(Font.system(size: 30))
                                            .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                        
                                        
                                    }}}
                        }}
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 950, height: 250, alignment: .center)
                            .background(Color(red: 0.95, green: 0.98, blue: 0.98))
                            .cornerRadius(30)
                        VStack(spacing:50){
                            Text(camel.ques2)
                                .font(Font.system(size: 35))
                                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                            
                                .frame(width:900,  alignment: .topLeading)
                            
                            HStack(spacing:100){
                                Button {
                                    
                                } label: {
                                    ZStack{Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 235, height: 95)
                                            .background(Color(red: 1, green: 0.96, blue: 0.81))
                                        
                                            .cornerRadius(15)
                                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                        
                                        Text(camel.choices2[0])
                                            .font(Font.system(size: 30))
                                            .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                        
                                        
                                        
                                        
                                    }}
                                Button {
                                    
                                } label: {
                                    ZStack{
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 235, height: 95)
                                            .background(Color(red: 1, green: 0.96, blue: 0.81))
                                        
                                            .cornerRadius(15)
                                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                        
                                        Text(camel.choices2[1])
                                            .font(Font.system(size: 30))
                                            .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                        
                                        
                                    }}}
                        }}
                    
                    
                  
                }
                Button {
                         
                } label: {
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
                }
            }}
        
    }
}

#Preview {
    QuizView()
}
