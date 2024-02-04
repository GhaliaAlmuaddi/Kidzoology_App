//
//  NameView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 11/07/1445 AH.
//

import SwiftUI

struct NameView: View {
    
    @AppStorage("Kid_name") var Currentname : String = ""
    @State var showAlert : Bool = false
    @State var navigateToHomePage : Bool = false
    
    var body: some View {
        
        ZStack {
            Color("backgroundColor").ignoresSafeArea()
            RoundedRectangle(cornerRadius: 30).frame(width: 758, height: 479)
                .foregroundStyle(Color(red: 0.95, green: 0.98, blue: 0.98))
            
            VStack {
                Text("\n\n")
                // Text("welcome\(currentImage)")
                Text("Enter your name ")
                    .font(
                        Font.system(size: 40).bold()
                    )
                //  .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.49, green: 0.32, blue: 0.09))
                Text(" ")
                
                
                
                
                TextField("", text: $Currentname, prompt: Text("")).frame(width: 409, height: 80)
                    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                
                    .cornerRadius(30).overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .inset(by: 1)
                            .stroke(Color(red: 0.28, green: 0.68, blue: 0.83), lineWidth: 2)
                        
                    )
                Button(action: {
                    if Currentname.count > 2 {
                        hideKeyboard()
                        navigateToHomePage = true
                    } else {
                        showAlert.toggle()
                    }
                }) {
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
                
            }.alert(isPresented: $showAlert) {
                Alert(title: Text("Name Required"), message: Text("Please enter your name"), dismissButton: .default(Text("OK")))
            }
            
            if navigateToHomePage {
                CharactersView()
            }
            
        }
        
        
        
    }
    private func hideKeyboard() {
         UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
         // Perform any other actions needed when the button is tapped
     }
 }



#Preview {
    NameView()
}
