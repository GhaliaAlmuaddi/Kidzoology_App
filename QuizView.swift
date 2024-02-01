//QuizView//
//
//  Quiz.swift
//  AnimalGame
//
//  Created by Amal Abughazaleh on 24/01/2024.
//

import SwiftUI
struct QuizView: View {
    @State var isButtonClicked = false
    @State var isButtonClicked1 = false
    @State  var isButtonClicked2 = false
    @State  var isButtonClicked3 = false
    @State  var selectedAnswer1 = ""
    @State  var selectedAnswer2 = ""
    //    @State var correctAnswer1 = camel.answer1
    //    @State var correctAnswer2 = camel.answer2
    @State var submit = false
    @State var navigate = false
    let selectedAnimal: Animals
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("backgroundColor")
                    .ignoresSafeArea()
                VStack(spacing:10){
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
                            
                                .frame(width: 40 , height: 30)
                                .foregroundColor(Color(red: 1, green: 0.55, blue: 0.26))
                                .padding(3)
                            
                            NavigationLink {
                                HomePageView()
                            } label: {
                                
                           
     
                                Image(systemName: "house.fill")
                                    .resizable()
                                    .padding(.leading, 5.0)
                                    .frame(width: 40 , height: 30)
                                    .foregroundColor(Color(red: 1, green: 0.56, blue: 0.27))
                            }
                        }
                    }
                    Spacer()
                    
                    VStack(spacing:20){
                        ZStack{
                            
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 950, height: 250, alignment: .center)
                                .background(Color(red: 0.95, green: 0.98, blue: 0.98))
                                .cornerRadius(30)
                            VStack(spacing:50){
                                Text(selectedAnimal.ques1)
                                    .font(Font.system(size: 35))
                                    .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                
                                    .frame(width:900,  alignment: .topLeading)
                                
                                
                                HStack(spacing:100){
                                    Button {
                                    action:
                                        do {self.isButtonClicked.toggle()
                                            selectedAnswer1 = selectedAnimal.choices1[0]
                                        }
                                        if self.isButtonClicked1 == true{
                                            self.isButtonClicked1.toggle()
                                            
                                        }
                                    } label: {
                                        
                                        ZStack{Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 235, height: 95)
                                                .background(Color(red: 1, green: 0.96, blue: 0.81))
                                            
                                                .cornerRadius(15)
                                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                            
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .inset(by: 2.5)
                                                    
                                                        .stroke(
                                                            (submit && isButtonClicked && selectedAnswer1 == selectedAnimal.answer1) ? Color.green : // If both conditions are true
                                                            (submit && isButtonClicked ? Color.red : // If only isButtonClicked is true
                                                             isButtonClicked ? Color.brown :
                                                                Color(red: 1, green: 0.96, blue: 0.81)), // If isButtonClicked is false
                                                            lineWidth: 7
                                                        )
                                                    
                                                )
                                            if submit && isButtonClicked && selectedAnswer1 == selectedAnimal.answer1 {
                                                Image(systemName: "checkmark.circle.fill")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.green)
                                                    .padding(.bottom, 110.0)
                                                    .padding(.leading, 240.0)
                                            } else if submit && isButtonClicked && selectedAnswer1 != selectedAnimal.answer1 {
                                                Image(systemName: "xmark.circle.fill")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.red)
                                                    .padding(.bottom, 110.0)
                                                    .padding(.leading, 240.0)
                                            }
                                            
                                            
                                            
                                            Text(selectedAnimal.choices1[0])
                                                .font(Font.system(size: 30))
                                                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    Button {
                                    action:
                                        do {self.isButtonClicked1.toggle()
                                            selectedAnswer1 = selectedAnimal.choices1[1]}
                                        if self.isButtonClicked == true{
                                            self.isButtonClicked.toggle()
                                        }
                                    } label: {
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 235, height: 95)
                                                .background(Color(red: 1, green: 0.96, blue: 0.81))
                                            
                                                .cornerRadius(15)
                                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                            
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .inset(by: 2.5)
                                                    
                                                        .stroke(
                                                            (submit && isButtonClicked1 && selectedAnswer1 == selectedAnimal.answer1) ? Color.green : // If both conditions are true
                                                            (submit && isButtonClicked1 ? Color.red : // If only isButtonClicked is true
                                                             isButtonClicked1 ? Color.brown :
                                                                Color(red: 1, green: 0.96, blue: 0.81)), // If isButtonClicked is false
                                                            lineWidth: 7
                                                        )
                                                    
                                                )
                                            if submit && isButtonClicked1 && selectedAnswer1 == selectedAnimal.answer1 {
                                                Image(systemName: "checkmark.circle.fill")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.green)
                                                    .padding(.bottom, 110.0)
                                                    .padding(.leading, 240.0)
                                            } else if submit && isButtonClicked1 && selectedAnswer1 != selectedAnimal.answer1 {
                                                Image(systemName: "xmark.circle.fill")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.red)
                                                    .padding(.bottom, 110.0)
                                                    .padding(.leading, 240.0)
                                            }
                                            
                                            
                                            
                                            Text(selectedAnimal.choices1[1])
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
                                Text(selectedAnimal.ques2)
                                    .font(Font.system(size: 35))
                                    .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                
                                    .frame(width:900,  alignment: .topLeading)
                                
                                HStack(spacing:100){
                                    Button {
                                    action:
                                        do {self.isButtonClicked2.toggle()
                                            selectedAnswer2 = selectedAnimal.choices2[0]}
                                        if self.isButtonClicked3 == true{
                                            self.isButtonClicked3.toggle()
                                            
                                        }
                                    } label: {
                                        ZStack{Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 235, height: 95)
                                                .background(Color(red: 1, green: 0.96, blue: 0.81))
                                            
                                                .cornerRadius(15)
                                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                            
                                            
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .inset(by: 2.5)
                                                    
                                                        .stroke(
                                                            (submit && isButtonClicked2 && selectedAnswer2 == selectedAnimal.answer2) ? Color.green : // If both conditions are true
                                                            (submit && isButtonClicked2 ? Color.red : // If only isButtonClicked is true
                                                             isButtonClicked2 ? Color.brown :
                                                                Color(red: 1, green: 0.96, blue: 0.81)), // If isButtonClicked is false
                                                            lineWidth: 7
                                                        )
                                                    
                                                )
                                            if submit && isButtonClicked2 && selectedAnswer2 == selectedAnimal.answer2 {
                                                Image(systemName: "checkmark.circle.fill")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.green)
                                                    .padding(.bottom, 110.0)
                                                    .padding(.leading, 240.0)
                                            } else if submit && isButtonClicked2 && selectedAnswer2 != selectedAnimal.answer2 {
                                                Image(systemName: "xmark.circle.fill")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.red)
                                                    .padding(.bottom, 110.0)
                                                    .padding(.leading, 240.0)
                                            }
                                            
                                            
                                            Text(selectedAnimal.choices2[0])
                                                .font(Font.system(size: 30))
                                                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                            
                                            
                                            
                                            
                                        }}
                                    Button {
                                    action:
                                        do {self.isButtonClicked3.toggle()
                                            selectedAnswer2 = selectedAnimal.choices2[1]}
                                        if self.isButtonClicked2 == true{
                                            self.isButtonClicked2.toggle()}
                                    } label: {
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 235, height: 95)
                                                .background(Color(red: 1, green: 0.96, blue: 0.81))
                                            
                                                .cornerRadius(15)
                                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                                            
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .inset(by: 2.5)
                                                    
                                                        .stroke(
                                                            (submit && isButtonClicked3 && selectedAnswer2 == selectedAnimal.answer2) ? Color.green : // If both conditions are true
                                                            (submit && isButtonClicked3 ? Color.red : // If only isButtonClicked is true
                                                             isButtonClicked3 ? Color.brown :
                                                                Color(red: 1, green: 0.96, blue: 0.81)), // If isButtonClicked is false
                                                            lineWidth: 7
                                                        )
                                                    
                                                )
                                            if submit && isButtonClicked3 && selectedAnswer2 == selectedAnimal.answer2 {
                                                Image(systemName: "checkmark.circle.fill")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.green)
                                                    .padding(.bottom, 110.0)
                                                    .padding(.leading, 240.0)
                                            } else if submit && isButtonClicked3 && selectedAnswer2 != selectedAnimal.answer1 {
                                                Image(systemName: "xmark.circle.fill")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.red)
                                                    .padding(.bottom, 110.0)
                                                    .padding(.leading, 240.0)
                                            }
                                            
                                            
                                            Text(selectedAnimal.choices2[1])
                                                .font(Font.system(size: 30))
                                                .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                                            
                                            
                                        }}}
                            }}
                        
                        
                        
                    }
                    NavigationLink(destination: sucessMassage( rewardAnimal: selectedAnimal), isActive: $navigate) {
                        
                        EmptyView()
                        
                    }
                    
                    Button {
                        if selectedAnswer1 == selectedAnimal.answer1 && selectedAnswer2 == selectedAnimal.answer2 {
                            navigate = true
                        } else {
                            navigate = false
                            submit = true
                        }                    } label: {
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
                    // Spacer()
                }}
            
            //}
        }.navigationBarBackButtonHidden(true)
        
        
    }}
#Preview {
    QuizView(selectedAnimal: camel)
}
