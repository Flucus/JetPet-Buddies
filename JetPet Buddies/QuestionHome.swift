//
//  QuestionHome.swift
//  JetPet Buddies
//
//  Created by Kelvin Chan on 17/11/2023.
//

import SwiftUI

struct QuestionHome: View {
    @State private var showShop = false
    @State private var showMatching = false
    @State private var showAr = false
    @State private var showPetHome = false
    
    
    var body: some View {
        
        ZStack {
            // Main content
            if showPetHome {
                
                PetHome(showPetHome: $showPetHome)
            } else if showShop {
                Shop()
            } else if showMatching {
                Question()
            } else if showAr {
                ARContentView()
            } else {
                VStack {
                    HStack {
                        Image("States") // Top left image
                            .resizable()
                            .frame(width: 100, height: 100)
                            .padding(.leading, 20)
                            .offset(y:20)
                        Spacer()
                        
                        Button("Shop") { // Top right button
                            showShop = true
                        }
                        .font(Font.custom("Itim", size: 40))
                        .foregroundColor(.white)
                        .frame(width: 214, height: 57)
                        .background(Color(red: 0.85, green: 0.33, blue: 0.18))
                        .cornerRadius(27)
                        .padding(.trailing, 20)
                    }
                    
                    Spacer()
                    
                    Image("Rabbit") // Center image
                        .resizable()
                        .frame(width: 483, height: 448)
                    
                    Spacer()
                    
                    // Bottom buttons
                    HStack {
                        Button("Pet Home") { // Left button

                            showPetHome = true
                        }
                        .font(Font.custom("Itim", size: 40))
                        .foregroundColor(.white)
                        .frame(width: 301, height: 72)
                        .background(Color(red: 0.20, green: 0.70, blue: 0.82))
                        .cornerRadius(50)
                        
                        Spacer()
                        
                        Button("Matching") { // Middle button
                            showMatching = true
                        }
                        .font(Font.custom("Itim", size: 40))
                        .foregroundColor(.white)
                        .frame(width: 301, height: 72)
                        .background(Color(red: 0.20, green: 0.70, blue: 0.82))
                        .cornerRadius(50)
                        
                        Spacer()
                        
                        Button("Take Photo with Pet") { // Right button
                            showAr = true
                        }
                        .font(Font.custom("Itim", size: 30))
                        .foregroundColor(.white)
                        .frame(width: 301, height: 72)
                        .background(Color(red: 0.20, green: 0.70, blue: 0.82))
                        .cornerRadius(50)
                    }
                    .padding(.bottom, 20)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                Image("CX") // Image at the bottom right
                    .resizable()
                    .frame(width: 237.32, height: 237.32)
                    .position(x: UIScreen.main.bounds.width - 130, y: UIScreen.main.bounds.height - 400)
                    .rotationEffect(.degrees(15))
                
            }
        }
                .background(Color(red: 0.99, green: 0.96, blue: 0.92))
                .edgesIgnoringSafeArea(.all)
        }
    
}



struct QuestionHome_Previews: PreviewProvider {
    static var previews: some View {
        QuestionHome()
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
}


