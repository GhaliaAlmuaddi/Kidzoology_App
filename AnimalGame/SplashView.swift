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
            //  NavigationStack {
            if let _ = Currentname , let _ = currentImage {
                HomePageView()
            }
            else {
                NameView()
            }
            
            // }
        } else {
                
                ZStack{
                    Color("backgroundColor")
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack{
                        
                        Image("applogo")
                            .resizable()
                            .scaledToFit()
                            .offset(x:-150,y:156)
                            .frame(width: 6000,height: 1000)
                                        
                            .scaleEffect(size)
                            .opacity(opacity)
                            .onAppear{
                                withAnimation(.easeIn(duration: 1.1)){
                                    self.size = 1.0
                                    self.opacity = 1.00
                                }
                                
                            }
                        
                    }.padding()
                    
                    
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
              

