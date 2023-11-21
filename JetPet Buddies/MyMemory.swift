//
//  MyMemory.swift
//  JetPet Buddies
//
//  Created by Kelvin Chan on 19/11/2023.
//

import SwiftUI

struct MyMemory: View {
    var body: some View {
        VStack{
            HStack{
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 473, height: 94)
                        .background(Color(red: 1, green: 1, blue: 1).opacity(0.46))
                        .cornerRadius(49)
                        .offset(x: 0, y: 6)
                        .shadow(
                            color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                        )
                    Text("My Memory")
                        .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                        .tracking(0.39)
                        .lineSpacing(31)
                        .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                        .offset(x: 40.50, y: 8.50)
                    
                    Image("Book_M")
                        .foregroundColor(.clear)
                        .frame(width: 176, height: 176)
                        .offset(x: -2.41, y: 2.93)
                        .rotationEffect(.degrees(-11))
                    
                        .frame(width: 148, height: 148)
                        .offset(x: -156.26, y: 15.48)
                        .rotationEffect(.degrees(11))
                }
                .frame(width: 500, height: 173.52)
                
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 344, height: 99)
                        .background(Color(red: 0.06, green: 0.70, blue: 0.72))
                        .cornerRadius(49)
                        .overlay(
                            RoundedRectangle(cornerRadius: 49)
                                .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                        )
                        .offset(x: 37, y: 2.50)
                        .shadow(
                            color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                        )
                    
                    Image("Tower")
                        .foregroundColor(.clear)
                        .frame(width: 179, height: 179)
                        .offset(x: -0.50, y: -3.50)
                        .frame(width: 148, height: 148)
                        .offset(x: -135, y: 0)
                    
                    Text("Pisa 2022")
                        .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                        .tracking(0.39)
                        .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))
                        .offset(x: 59, y: 2)
                }
                .frame(width: 450, height: 148)
            }
            
            HStack{
                VStack{
                    ZStack {
                        Image("Photo")
                            .resizable()
                            .frame(width: 570, height: 321)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 580, height: 331)
                            .cornerRadius(49)
                            .overlay(
                                RoundedRectangle(cornerRadius: 49)
                                    .inset(by: 5)
                                    .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                            )
                            .offset(x: 0, y: 0)
                            .shadow(
                                color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                            )
                        
                        
                    }
                    .frame(width: 580, height: 331)
                    
                    ZStack() {
                        
                        Image("Map_M")
                            .resizable()
                            .frame(width: 570, height: 263)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 580, height: 273)
                            .cornerRadius(49)
                            .overlay(
                                RoundedRectangle(cornerRadius: 49)
                                    .inset(by: 5)
                                    .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                            )
                            .offset(x: 0, y: 0)
                            .shadow(
                                color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                            )
                        
                    }
                    .frame(width: 580, height: 273)
                    
                    
                    
                }
                ZStack{
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 529, height: 620)
                        .background(Color(red: 0.06, green: 0.70, blue: 0.72))
                        .cornerRadius(49)
                        .overlay(
                            RoundedRectangle(cornerRadius: 49)
                                .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                        )
                        .shadow(
                            color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                        )

                        Text("I went to the Leaning Tower of Pisa in 2022 with my family. It was so amazing to see the tower that is almost 900 years old and still standing. \n\nWe took a lot of funny photos pretending to hold up the tower or push it down.  \nI learned that the tower was leaning because the ground was too soft and it started to sink on one side. I wonder if it will ever fall down. It was a fun and memorable trip.")
                            .font(Font.custom("SFCompactRounded", size: 24).weight(.bold))
                            .frame(width: 509)
                            .tracking(0.34)
                            .lineSpacing(20)
                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))

                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 255 / 255, green: 239 / 255, blue: 211 / 255))
        
        
    }
    
}

struct MyMemory_Previews: PreviewProvider {
    static var previews: some View {
        MyMemory()
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
    
}

#Preview {
    MyMemory()
}
