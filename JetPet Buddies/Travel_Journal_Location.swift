//
//  Travel_Journal_Location.swift
//  JetPet Buddies
//
//  Created by Kelvin Chan on 18/11/2023.
//

import SwiftUI


struct Travel_Journal_Location: View {
    var body: some View {
        VStack {
            HStack{
                VStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 471, height: 94)
                            .background(Color(red: 1, green: 1, blue: 1).opacity(0.6))
                            .cornerRadius(49)
                            .shadow(
                                color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                            )
                        HStack{
                            Image("Book")
                                .foregroundColor(.clear)
                                .frame(width: 84.58, height: 104)
                                .rotationEffect(.degrees(-10))
                                .padding(20)
                            
                            
                            
                            Text("Your Travel Journal")
                                .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                .tracking(0.39)
                                .lineSpacing(31)
                                .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                            
                        }
                    }
                    .padding(.bottom, 200)
                    
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 539, height: 121)
                            .background(Color(red: 0.06, green: 0.70, blue: 0.72))
                            .cornerRadius(49)
                            .overlay(
                                RoundedRectangle(cornerRadius: 49)
                                    .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                            )
                            .offset(x: 1, y: 115)
                            .shadow(
                                color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                            )
                        Image("Rabbit")
                            .foregroundColor(.clear)
                            .frame(width: 260, height: 260)
                            .offset(x: -140.50, y: -45.50)
                        
                        VStack(alignment: .leading){
                            Text("Tell me about the places")
                                .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                .tracking(0.39)
                                .lineSpacing(31)
                                .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))
                            Text("you visited today!")
                                .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                .tracking(0.39)
                                .lineSpacing(31)
                                .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))
                        }
                        .offset(x: -40.50, y: 115.50)
                        
                    }
                    .frame(width: 541, height: 351)
                    .padding(.leading, 15)
                    .padding(.bottom, 110)
                    
                    
                }
                
                Spacer()
                VStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 428.87, height: 99)
                            .background(Color(red: 0.06, green: 0.70, blue: 0.72))
                            .cornerRadius(29)
                            .overlay(
                                RoundedRectangle(cornerRadius: 29)
                                    .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                            )
                            .shadow(
                                color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                            )
                        Text("Day 2 @ Taipei")
                            .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                            .tracking(0.39)
                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))
                    }
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 426.67, height: 71)
                            .background(Color(red: 1, green: 0.97, blue: 0.93))
                            .cornerRadius(29)
                            .overlay(
                                RoundedRectangle(cornerRadius: 29)
                                    .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                            )
                            .shadow(
                                color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                
                            )
                        
                        Text("Visited Today")
                            .font(Font.custom("SFCompactRounded", size: 30).weight(.bold))
                            .tracking(0.36)
                            .lineSpacing(21)
                            .foregroundColor(Color(red: 1, green: 0.52, blue: 0.44))
                    }
                    
                    Button(action: {
                        // Add your button action here
                    }) {
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 426.67, height: 178)
                                .background(Color(red: 1, green: 0.52, blue: 0.44))
                                .cornerRadius(29)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 29)
                                        .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                                )
                                .shadow(
                                    color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                )
                            Button(action: {
                                // Add your button action here
                            }) {
                                ZStack{
                                    HStack{
                                        VStack(alignment: .leading){
                                            Rectangle()
                                                .background(Image("TaiPei"))
                                                .foregroundColor(.clear)
                                                .frame(width: 312, height: 77)
                                                .cornerRadius(9)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 9)
                                                        .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                                                )
                                                .shadow(
                                                    color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                                )
                                            VStack(alignment: .leading){
                                                Text("Taipei Childern’s")
                                                Text("you visited today!")
                                            }
                                            .font(Font.custom("SFCompactRounded", size: 22).weight(.bold))
                                            .tracking(0.27)
                                            .lineSpacing(21)
                                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))
                                            
                                        }
                                        Image(systemName: "arrowshape.right.circle")
                                            .font(.custom("S", size: 39).weight(.semibold))
                                        .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))                            }
                                }
                            }
                            
                        }
                        
                        
                        
                    }
                    
                    Button(action: {
                        // Add your button action here
                    }) {
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 426.67, height: 178)
                                .background(Color(red: 1, green: 0.52, blue: 0.44))
                                .cornerRadius(29)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 29)
                                        .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                                )
                                .shadow(
                                    color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                )
                            Button(action: {
                                // Add your button action here
                            }) {
                                ZStack{
                                    HStack{
                                        VStack(alignment: .leading){
                                            Rectangle()
                                                .background(Image("101"))
                                                .foregroundColor(.clear)
                                                .frame(width: 312, height: 77)
                                                .cornerRadius(9)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 9)
                                                        .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                                                )
                                                .shadow(
                                                    color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                                )
                                            VStack(alignment: .leading){
                                                Text("Taipei Childern’s")
                                                Text("Amusement Park")
                                            }
                                            .font(Font.custom("SFCompactRounded", size: 22).weight(.bold))
                                            .tracking(0.27)
                                            .lineSpacing(21)
                                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))
                                        }
                                        Image(systemName: "arrowshape.right.circle")
                                            .font(.custom("S", size: 39).weight(.semibold))
                                        .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))                            }
                                }
                            }
                            
                        }
                        
                    }
                    Button(action: {
                        // Add your button action here
                    }) {
                        NavigationLink(destination: Travel_Journal_Animal()) {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 426.67, height: 178)
                                    .background(Color(red: 1, green: 0.52, blue: 0.44))
                                    .cornerRadius(29)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 29)
                                            .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                                    )
                                    .shadow(
                                        color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                    )
                                Button(action: {
                                    // Add your button action here
                                }) {
                                    NavigationLink(destination: Travel_Journal_Animal()) {
                                        ZStack{
                                            HStack{
                                                VStack(alignment: .leading){
                                                    Rectangle()
                                                        .background(Image("Zoo"))
                                                        .foregroundColor(.clear)
                                                        .frame(width: 312, height: 77)
                                                        .cornerRadius(9)
                                                        .overlay(
                                                            RoundedRectangle(cornerRadius: 9)
                                                                .stroke(Color(red: 1, green: 0.97, blue: 0.93), lineWidth: 5)
                                                        )
                                                        .shadow(
                                                            color: Color(red: 1, green: 0.87, blue: 0.65, opacity: 0.43), radius: 31, y: 8
                                                        )
                                                    VStack(alignment: .leading){
                                                        Text("Taipei Childern’s")
                                                        
                                                        Text("Amusement Park")
                                                    }
                                                    .font(Font.custom("SFCompactRounded", size: 22).weight(.bold))
                                                    .tracking(0.27)
                                                    .lineSpacing(21)
                                                    .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))
                                                }
                                                Image(systemName: "arrowshape.right.circle")
                                                    .font(.custom("S", size: 39).weight(.semibold))
                                                .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93))                          }
                                        }
                                    }
                                }
                            }
                            
                        }
                        
                    }
                    
                }
            }
            .frame(width: 1194, height: 834)
            .background(Image("Map"))
        }
    }
}



struct Travel_Journal_Location_Previews: PreviewProvider {
    static var previews: some View {
        Travel_Journal_Location()
            .previewInterfaceOrientation(.landscapeLeft)
        
        
    }
    
}

#Preview {
    Travel_Journal_Location()
    
}
