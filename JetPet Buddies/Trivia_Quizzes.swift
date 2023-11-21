//
//  Trivia_Quizzes.swift
//  JetPet Buddies
//
//  Created by itst on 18/11/2023.
//

import SwiftUI

struct Trivia_Quizzes: View {
    var body: some View {
        VStack{
            HStack{
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 473, height: 94)
                        .background(.white.opacity(0.46))
                        .cornerRadius(49)
                        .shadow(color: Color(red: 1, green: 0.87, blue: 0.65).opacity(0.43), radius: 15.5, x: 0, y: 8)
                    HStack{
                        Image("Quiz")
                            .foregroundColor(.clear)
                            .frame(width: 84.58, height: 104)
                            
                            .padding(20)
                        
                        Text("Trivia Quizzes")
                            .opacity(1)
                            .foregroundColor(Color(red: 255/255, green: 132/255, blue: 112/255, opacity: 1))
                            .font(.custom("SFCompactRounded-Bold", size: 32))
                            .fontWeight(.bold)
                            .font(.title) // You can adjust the font size using .font modifier or .font(.system(size: fontSize))
                            .font(.system(size: 32, weight: .bold, design: .default)) // Another way to set font size and weight
                            .font(.custom("SFCompactRounded-Bold", size: 32))
                            .kerning(0.39)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(31)
                    }
                }
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 530, height: 99)
                        .background(Color(red: 0.06, green: 0.70, blue: 0.72))
                        .cornerRadius(49)
                        .overlay(
                            RoundedRectangle(cornerRadius: 49)
                                .inset(by: 0)
                                .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 10)
                        )
                        .shadow(
                            color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                        );
                    HStack{
                        Text("Pisa")
                            .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                            .tracking(0.39)
                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93));
                        
                        Text("PSA")
                            .font(Font.custom("SFCompactRounded", size: 23).weight(.light))
                            .tracking(0.28)
                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93));
                        
                        Text("✈")
                            .font(Font.custom("SFCompactRounded", size: 26).weight(.bold))
                            .tracking(0.31)
                            .lineSpacing(31)
                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93));
                        
                        Text("HKG")
                            .font(Font.custom("SFCompactRounded", size: 23).weight(.light))
                            .tracking(0.28)
                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93));
                        
                        Text("Hong Kong")
                            .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                            .tracking(0.39)
                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93));
                        
                    }
                }
                
                
            }
            
            HStack{
                Button(action: {
                    // Add your button action here
                }) {
                    Circle()
                        .frame(width: 80, height: 50)
                        .foregroundColor(Color(red: 255/255, green: 132/255, blue: 112/255))
                        .overlay(
                            Text("←")
                                .font(.custom("SFCompactRounded-Light", size: 40))
                                .fontWeight(.light) // Use .fontWeight(.light) for font weight 300
                                .kerning(0.83)
                                .multilineTextAlignment(.center)
                                .lineSpacing(31)
                                .foregroundColor(Color.white)
                                .padding()
                        )
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 539, height: 301)
                        .background(Color(red: 1, green: 0.97, blue: 0.93))
                        .cornerRadius(49)
                    
                    
                    Image("pisatower")
                        .resizable()
                        .cornerRadius(41)
                        .frame(width: 516, height: 283);
                    
                    
                }
                Button(action: {
                    // Add your button action here
                }) {
                    Circle()
                        .frame(width: 80, height: 50)
                        .foregroundColor(Color(red: 255/255, green: 132/255, blue: 112/255))
                        .overlay(
                            Text("→")
                                .font(.custom("SFCompactRounded-Light", size: 40))
                                .fontWeight(.light) // Use .fontWeight(.light) for font weight 300
                                .kerning(0.83)
                                .multilineTextAlignment(.center)
                                .lineSpacing(31)
                                .foregroundColor(Color.white)
                                .padding()
                        )
                }
                
            }
            HStack{
                VStack {
                    ZStack{
                        
                        Image("bitmap2")
                            .resizable()
                            .frame(width: 100, height: 270);
                        
                        Image("bitmap1")
                            .resizable()
                            .frame(width: 100, height: 300);
                        
                    }
                }
                Spacer()
                
                VStack{
                    ZStack(alignment:.leading){
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 720, height: 130)
                            .background(Color(red: 0.06, green: 0.70, blue: 0.72))
                            .cornerRadius(49)
                            .overlay(
                                RoundedRectangle(cornerRadius: 49)
                                    .inset(by: 0)
                                    .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 10)
                            )
                            .shadow(
                                color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                            )
                            .padding(.trailing,0);
                        
                        Text("What year was the \nLeaning Tower of Pisa built?")
                            .padding(45)
                            .opacity(1)
                            .foregroundColor(Color(red: 255/255, green: 248/255, blue: 236/255))
                            .font(.custom("SFCompactRounded-Bold", size: 32))
                            .fontWeight(.bold) // Use .fontWeight(.bold) for font weight 700
                            .kerning(0.39)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(0)
                    }
                    
                    HStack{
                        Button(action: {
                            // Add your button action here
                        }) {
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 220, height: 120)
                                    .background(.white)
                                    .cornerRadius(49)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 49)
                                            .inset(by: 0)
                                            .stroke(Color(red: 0.06, green: 0.70, blue: 0.73), lineWidth: 5)
                                    )
                                    .shadow(
                                        color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                    ).padding(.trailing, 20);
                                Text("1653")
                                    .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                    .tracking(0.39)
                                    .lineSpacing(31)
                                    .foregroundColor(Color(red: 0.06, green: 0.70, blue: 0.73))
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing, 20);
                                
                            }
                        }
                        
                        Button(action: {
                            // Add your button action here
                        }) {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 220, height: 120)
                                    .background(.white)
                                    .cornerRadius(49)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 49)
                                            .inset(by: 0)
                                            .stroke(Color(red: 0.06, green: 0.70, blue: 0.73), lineWidth: 5)
                                    )
                                    .shadow(
                                        color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                    ).padding(.trailing, 20);
                                Text("1173")
                                    .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                    .tracking(0.39)
                                    .lineSpacing(31)
                                    .foregroundColor(Color(red: 0.06, green: 0.70, blue: 0.73))
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing, 20);
                            }
                            
                        }
                        
                        Button(action: {
                            // Add your button action here
                        }) {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 220, height: 120)
                                    .background(.white)
                                    .cornerRadius(49)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 49)
                                            .inset(by: 0)
                                            .stroke(Color(red: 0.06, green: 0.70, blue: 0.73), lineWidth: 5)
                                    )
                                    .shadow(
                                        color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                    )
                                
                                
                                Text("1253")
                                    .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                    .tracking(0.39)
                                    .lineSpacing(31)
                                    .foregroundColor(Color(red: 0.06, green: 0.70, blue: 0.73))
                                    .multilineTextAlignment(.leading)
                                
                            }
                        }
                    }
                }
                
                Spacer()
                
                VStack(){
                    Image("bitmap3")
                        .resizable()
                        .frame(width: 120, height: 300);
                    
                }
                
                
            }.frame(maxWidth:.infinity)
        }
        
        
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Fill the entire available space
        .background(Color(red: 255 / 255, green: 239 / 255, blue: 211 / 255)) // Set background color to #FFEFD3
        
        
        
        
    }
}


struct Quizzes_Previews: PreviewProvider {
    static var previews: some View {
        Trivia_Quizzes()
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
}

#Preview {
    Trivia_Quizzes()
}
