//
//  SplashView.swift
//  MC3Ghalia
//
//  Created by Ghalia Mohammed Al Muaddi on 12/07/1445 AH.
//



import SwiftUI

struct SplashView : View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @AppStorage("Opened") var IsOpen : Bool = false
    
    @AppStorage("Kid_name") var Currentname : String?
    @AppStorage("imageKid") var currentImage: String?
    
    
    
    
    var body: some View {
        
        
        if isActive {
         
            if let _ = Currentname , let _ = currentImage {
                HomePageView()
            }
            else {
                NameView()
            }
            
            
        } else {
            
            ZStack{
                Color("backgroundColor")
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Image("applogo")
                        .resizable()
                        .scaledToFit().frame(width: 8000,height: 1000)
                        .padding(.top,300)
                        .padding(.trailing,300)
                    
                        
                    
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear{
                            withAnimation(.easeIn(duration: 1.1)){
                                self.size = 1.0
                                self.opacity = 1.00
                            }
                            
                        }
                    
                }.padding(.horizontal)
                
                
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            withAnimation {
                                self.isActive = true
                                
                            }
                            
                        }
                        
                    }
                
            }
            
        }
    }
    
}



 #Preview {
     SplashView()
    }
              

