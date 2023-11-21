//
//  ContentView.swift
//  JetPet Buddies
//
//  Created by Kelvin Chan on 14/11/2023.
//

import SwiftUI

struct HomePage: View {
    
    var body: some View {
        
        HStack{
            
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 755, height: 799)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.white, Color(red: 1, green: 1, blue: 1).opacity(0)]), startPoint: .bottomLeading, endPoint: .topTrailing)
                    )
                VStack{
                    
                    
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 495, height: 121)
                            .background(Color(red: 0.06, green: 0.70, blue: 0.72))
                            .cornerRadius(49)
                            .overlay(
                                RoundedRectangle(cornerRadius: 49)
                                    .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                            )
                            .offset(x: 89.50, y: 44.50)
                            .shadow(
                                color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                            )
                        Text("Hey! Day 2 at Italy")
                            .font(Font.custom("SFCompactRounded", size: 38).weight(.bold))
                            .tracking(0.39)
                            .lineSpacing(31)
                            .foregroundColor(.white)
                            .offset(x: 89.50, y: 44.50)
                        
                        Image("Rabbit")
                            .foregroundColor(.clear)
                            .frame(width: 260, height: 260)
                            .offset(x: -207, y: 0)
                            .shadow(
                                color: Color(red: 0.96, green: 0.67, blue: 0.55, opacity: 0.54), radius: 20, y: 11
                            )
                    }
                    .frame(width: 674, height: 260)
                    Spacer()
                        .frame(height: 90)
                    Button(action: {
                        // This action is now handled by the NavigationLink, so nothing is needed here
                    }) {
                        NavigationLink(destination: Travel_Journal_Location()) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 471, height: 94)
                                    .background(Color(red: 1, green: 1, blue: 1).opacity(0.85))
                                    .cornerRadius(49)
                                    .offset(x: 0, y: 12.83)
                                    .shadow(color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8)
                                
                                Text("Your Travel Journal")
                                    .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                    .tracking(0.39)
                                    .lineSpacing(31)
                                    .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                                    .offset(x: 42.50, y: 13.33)
                                
                                Image("Book")
                                    .foregroundColor(.clear)
                                    .frame(width: 84.58, height: 104)
                                    .offset(x: -176.39, y: 9.76)
                            }
                        }
                    }
                    
                    Button(action: {
                        // Add your button action here
                    }) {
                        NavigationLink(destination: Trivia_Quizzes()) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 471, height: 94)
                                    .background(Color(red: 1, green: 1, blue: 1).opacity(0.85))
                                    .cornerRadius(49)
                                    .offset(x: 0, y: 12.83)
                                    .shadow(color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8)
                                
                                Text("Trivia Quizzes")
                                    .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                    .tracking(0.39)
                                    .lineSpacing(31)
                                    .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                                    .offset(x: 42.50, y: 13.33)
                                
                                Image("Quiz")
                                    .foregroundColor(.clear)
                                    .offset(x: -176.39, y: 9.76)
                            }
                        }
                    }.frame(width: 471, height: 119.66)
                    
                    Button(action: {
                        // Add your button action here
                    }) {
                        NavigationLink(destination: Chat()) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 471, height: 94)
                                    .background(Color(red: 1, green: 1, blue: 1).opacity(0.85))
                                    .cornerRadius(49)
                                    .offset(x: 0, y: 12.83)
                                    .shadow(color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8)
                                
                                Text("Chat Bot")
                                    .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                    .tracking(0.39)
                                    .lineSpacing(31)
                                    .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                                    .offset(x: 42.50, y: 13.33)
                                
                                Image("AI")
                                    .resizable()
                                    .frame(width: 104, height: 104)
                                    .foregroundColor(.clear)
                                    .offset(x: -176.39, y: 9.76)
                            }
                        }
                    }.frame(width: 471, height: 119.66)
                    
                }
            }
            VStack{
                HStack{
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 94, height: 94)
                            .background(.white)
                            .cornerRadius(29)
                            .overlay(
                                RoundedRectangle(cornerRadius: 29)
                                    .inset(by: 0.50)
                                    .stroke(Color(red: 0.87, green: 0.87, blue: 0.87), lineWidth: 0.50)
                            )
                            .shadow(
                                color: Color(red: 1, green: 0.52, blue: 0.44, opacity: 0.20), radius: 20, y: 2
                            )
                        Image("Icon")
                            .resizable()
                            .frame(width: 70, height: 72)
                    }
                    HStack{
                        Text("JetPet")
                            .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                            .tracking(0.39)
                            .lineSpacing(31)
                            .foregroundColor(Color(red: 0.06, green: 0.70, blue: 0.73))
                        
                        Text("Buddies")
                            .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                            .tracking(0.39)
                            .lineSpacing(31)
                            .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                    }
                    
                    
                }
                Spacer()
                    .frame(height: 50)
                
                Button(action: {
                    // Add your button action here
                }) {
                    NavigationLink(destination: MyMemory()) {
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 365, height: 71)
                                .background(Color(red: 1, green: 0.97, blue: 0.93))
                                .cornerRadius(29)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 29)
                                        .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                                )
                                .shadow(
                                    color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                )
                            Text("My memory")
                                .font(Font.custom("SFCompactRounded", size: 30).weight(.bold))
                                .tracking(0.36)
                                .lineSpacing(21)
                                .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                        }
                    }
                }
                
                Spacer()
                    .frame(height: 40)
                
                Button(action: {
                    // Add your button action here
                }) {
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 365, height: 121)
                            .background(Color(red: 0.06, green: 0.70, blue: 0.72))
                            .cornerRadius(49)
                            .overlay(
                                RoundedRectangle(cornerRadius: 49)
                                    .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                            )
                            .shadow(
                                color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                            )
                        
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 179, height: 179)
                            .background(
                                Image("Tower")
                            )
                            .offset(x: -130, y: -35)
                        
                        VStack(alignment: .leading){
                            Text("Trip to")
                                .font(Font.custom("SFCompactRounded", size: 18).weight(.bold))
                                .tracking(0.36)
                                .lineSpacing(21)
                                .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))
                            
                            Text("Pisa 2022")
                                .font(Font.custom("SFCompactRounded", size: 38).weight(.bold))
                                .tracking(0.36)
                                .lineSpacing(21)
                                .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))
                        }
                        .offset(x: 50, y: 0)
                        
                    }
                    .frame(width: 398, height: 191)
                }
                
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 365, height: 224)
                        .background(Color(red: 1, green: 0.97, blue: 0.93))
                        .cornerRadius(29)
                        .overlay(
                            RoundedRectangle(cornerRadius: 29)
                                .inset(by: 5)
                                .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                        )
                        .offset(x: 0, y: 16.30)
                        .shadow(
                            color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                        )
                    VStack(alignment: .leading){
                        HStack{
                            Image("Asia")
                                .foregroundColor(.clear)
                                .frame(width: 93.64, height: 117)
                            
                            
                                .rotationEffect(.degrees(-8))
                                .shadow(
                                    color: Color(red: 0.99, green: 0.82, blue: 0.08, opacity: 0.31), radius: 18, y: 2
                                )
                            Spacer()
                                .frame(width: 30)
                            VStack(alignment: .leading){
                                Text("Asia Miles")
                                    .font(Font.custom("SFCompactRounded", size: 30).weight(.bold))
                                    .tracking(0.36)
                                    .lineSpacing(21)
                                    .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                                    .padding(.top,35)
                                
                                
                                Text("374")
                                    .font(Font.custom("SFCompactRounded", size: 50).weight(.bold))
                                    .tracking(0.60)
                                    .lineSpacing(21)
                                    .foregroundColor(Color(red: 0.06, green: 0.70, blue: 0.73))
                            }
                        }
                        Rectangle()
                            .frame(width: 319, height: 10)
                            .foregroundColor(Color(red: 1, green: 0.94, blue: 0.83))
                            .cornerRadius(50)
                        
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("18 NOV 2023")
                                    .font(Font.custom("SFCompactRounded", size: 14))
                                    .tracking(0.17)
                                    .lineSpacing(21)
                                    .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                                Text("10 Questions")
                                    .font(Font.custom("SFCompactRounded", size: 20).weight(.bold))
                                    .tracking(0.24)
                                    .lineSpacing(21)
                                    .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                            }
                            Spacer()
                                .frame(width: 100)
                            Text("+23")
                                .font(Font.custom("SFCompactRounded", size: 50).weight(.bold))
                                .tracking(0.60)
                                .lineSpacing(21)
                                .foregroundColor(Color(red: 0.06, green: 0.70, blue: 0.73))
                        }
                        
                        
                        
                        
                    }
                }
                .frame(width: 365, height: 256.60)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .cornerRadius(55)
        .frame(width: 1194, height: 834)
        .background(Color(red: 1, green: 0.94, blue: 0.83))
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
    
}





#Preview {
    HomePage()
}
