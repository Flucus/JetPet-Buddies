//
//  Travel_Journal_Animal.swift
//  JetPet Buddies
//
//  Created by Kelvin Chan on 19/11/2023.


import SwiftUI

struct Travel_Journal_Animal: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 471, height: 94)
                        .background(Color(red: 1, green: 1, blue: 1).opacity(0.8))
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
                .padding(.trailing, 155)
                
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
                        Text("TaiPai")
                            .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                            .tracking(0.39)
                            .foregroundColor(Color(red: 1, green: 0.97, blue: 0.93));
                        
                        Text("TPE")
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
            }.padding(.bottom,100)
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
                        HStack{
                            Image("Geese")
                            Text("Geese")
                                .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                .tracking(0.39)
                                .lineSpacing(31)
                                .foregroundColor(Color(red: 0.06, green: 0.70, blue: 0.73))
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 20);
                        }
                        
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
                        HStack{
                            Image("Koala")
                            Text("Koala")
                                .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                .tracking(0.39)
                                .lineSpacing(31)
                                .foregroundColor(Color(red: 0.06, green: 0.70, blue: 0.73))
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 20);
                        }
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
                        
                        HStack{
                            Image("Panda")
                            Text("Panda")
                                .font(Font.custom("SFCompactRounded", size: 32).weight(.bold))
                                .tracking(0.39)
                                .lineSpacing(31)
                                .foregroundColor(Color(red: 0.06, green: 0.70, blue: 0.73))
                                .multilineTextAlignment(.leading)
                        }
                        
                    }
                    Spacer()
                    
                    Button(action: {
                        // Add your button action here
                    }) {
                        NavigationLink(destination: HomePage()) {
                            Image(systemName: "house.circle")
                                .font(.system(size: 100))
                                .colorMultiply(Color.black)
                        }
                    }.padding(.trailing, 20)
                }
                
            }
        }
        .frame(width: 1194, height: 834)
        .background(Image("Map"))
    }
    
}

struct Travel_Journal_Animal_Previews: PreviewProvider {
    static var previews: some View {
        Travel_Journal_Animal()
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
    
}

#Preview {
    Travel_Journal_Animal()
}
