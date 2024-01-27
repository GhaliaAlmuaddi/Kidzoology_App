//
//  NameView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 11/07/1445 AH.
//

import SwiftUI

struct NameView: View {
    //@State var kid_name : String
    
    @AppStorage("Kid_name") var Currentname : String = ""
   
    
    @AppStorage("Kid_image") var currentImage: String = ""
    
   


   // @State var CurrentState : String = ""
    
    var body: some View {

        ZStack {
            Color("backgroundColor").ignoresSafeArea()
            RoundedRectangle(cornerRadius: 30).frame(width: 758, height: 479)
                .foregroundStyle(Color(red: 0.95, green: 0.98, blue: 0.98))
            
            VStack {
               
                Text("\n\n")
                
                Text("Enter your name ")
                    .font(
                        Font.system(size: 40).bold()
                    )
                //  .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                Text(" ")
                
                
                
                
                TextField("",text: $Currentname, prompt: Text("  ")).frame(width: 409, height: 80)
                    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                
                    .cornerRadius(30).overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .inset(by: 1)
                            .stroke(Color(red: 0.28, green: 0.68, blue: 0.83), lineWidth: 2)
                        
                    )
                
                NavigationLink {

                    
                    HomePageView()
                }
                
                label :{
                    ZStack{
                        
                        
                        RoundedRectangle(cornerRadius: 50).frame(width: 310, height: 84).foregroundColor(Color(red: 1, green: 0.55, blue: 0.26))
                        
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        
                        Text("Start")
                            .font(
                                Font.system(size: 32)
                                    .weight(.bold)
                            )
                            .kerning(1.92)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        
                        //.frame(width: 319, alignment: .center)
                    }
                    .padding(50)
                    
                }
                .padding(50)
            }
                
            }
        }
        // IsOpen = true

   
}


#Preview {
    NameView()
}
