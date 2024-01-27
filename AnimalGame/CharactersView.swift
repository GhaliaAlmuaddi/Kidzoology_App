//
//  CharactersView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 11/07/1445 AH.
//

import SwiftUI

struct CharactersView: View {
    
    @AppStorage("Kid_image") var currentImage: String = ""
    
    // @State var CurrentState3 : String = ""
    
    //  @AppStorage("Opened") var IsOpen : Bool = true
    
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                Color("backgroundColor").ignoresSafeArea()
                RoundedRectangle(cornerRadius: 30).frame(width: 758, height: 479).foregroundStyle(Color(red: 0.95, green: 0.98, blue: 0.98))
                VStack{
                    Text("\n")
                    
                    Text("Select your character ")
                        .font(
                            Font.system(size: 40).bold()
                        )
                    //  .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                        .frame(width: 433, height: 51)
                    HStack {
                        
                        Button(action: {
                            
                            let x : String = "boy"
                            currentImage = x
                            //                            Current_gender(CurrentState1 : &CurrentState3)
                            
                            
                            
                        }) {
                            
                            NavigationLink(destination:   NameView()) {
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 30).frame(width: 280, height: 276).foregroundStyle(Color(red: 0.75, green: 0.87, blue: 0.73)).shadow(color: .black.opacity(0.75), radius: 2, x: 0, y: 4)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 35)
                                                .inset(by: 8.5)
                                                .stroke(.white, lineWidth: 17)
                                            
                                        )
                                    
                                    
                                    Image("boy")
                                        .resizable()
                                    // .aspectRatio(contentMode: .fill)
                                        .frame(width: 182, height: 243)
                                    
                                }
                                
                                .padding(45)
                                
                                
                            }
                            
                            
                        }
                        
                        
                        Button(action: {
                            
                            let x : String = "girl"
                            currentImage = x
                            
                            //                        CurrentState3 = "girl"
                            //                           Current_gender(CurrentState1 : CurrentState3)
                        }) {
                            
                            
                            NavigationLink(destination:   NameView()) {
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 35).frame(width: 280, height: 276)
                                        .foregroundStyle(Color(red: 0.98, green: 0.78, blue: 0.52)).shadow(color: .black.opacity(0.75), radius: 2, x: 0, y: 4)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 35)
                                                .inset(by: 8.5)
                                                .stroke(.white, lineWidth: 17)
                                            
                                        )
                                    Image("girl")
                                        .resizable()
                                    // .aspectRatio(contentMode: .fill)
                                        .frame(width: 238, height: 237)
                                    
                                    
                                }.padding(45)
                            }
                           
                            
                        }
                    }
                    
                }
            }
        }
    }
    
    
    
    
    
    
    
//    func Current_gender(CurrentState1 : String) {
//        currentImage = CurrentState1
//
//    }
    
    
}


#Preview {
    CharactersView()
}
