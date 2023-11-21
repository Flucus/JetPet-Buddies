//
//  Shop.swift
//  JetPet Buddies
//
//  Created by Kelvin Chan on 15/11/2023.
//

import SwiftUI

struct Shop: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack() {
            Group {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 495, height: 457)
                    .background(
                        Image("Rabbit")
                            .resizable()
                    )
                    .offset(x: -382.50, y: 166.50)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 84, height: 84)
                        .background(
                            Image("Crystal")
                                .resizable()
                        )
                        .offset(x: -100, y: 0)
                    ZStack() {
                        Image("Rectangle 1")
                            .frame(width: 130, height: 41)
                            .background(Color(red: 0.79, green: 0.78, blue: 0.78))
                            .cornerRadius(27)
                        Text("500")
                            .font(Font.custom("Inter", size: 24))
                            .foregroundColor(.black)
                            .offset(x: -0.50, y: 0)
                    }
                }
                .frame(width: 257, height: 84)
                .frame(width: 170, height: 41)
                .offset(x: 47, y: -336.50)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 86, height: 86)
                    .background(
                        Image("Reward")
                            .resizable()
                    )
                    .offset(x: 310, y: -340)
                ZStack() {
                    
                    Image("Rectangle 1")
                        .frame(width: 130, height: 41)
                        .background(Color(red: 0.79, green: 0.78, blue: 0.78))
                        .cornerRadius(27)
                    
                    Text("350")
                        .font(Font.custom("Inter", size: 24))
                        .foregroundColor(.black)
                        .offset(x: -0.50, y: 0)
                }
                .frame(width: 170, height: 41)
                .offset(x: 438, y: -338.50)
                
                Button(action: {
                    // Action for the back button
                    presentationMode.wrappedValue.dismiss()

                }) {
                    Image(systemName: "arrowshape.backward.circle")
                        .font(Font.system(size: 48))
                }
                .offset(x: -537, y: -359)


                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 675, height: 644)
                    .background(Color(red: 0.89, green: 0.89, blue: 0.89))
                    .cornerRadius(70)
                    .offset(x: 192.50, y: 46)
                
                Button(action: {
                    // Define what the button should do when tapped
                }) {
                    // The view that represents the button's appearance
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 133, height: 40)
                            .background(Color(red: 0.99, green: 0.83, blue: 0))
                            .cornerRadius(54)
                        Text("Buy")
                            .font(Font.custom("Itim", size: 24))
                            .foregroundColor(.black)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 30, height: 30)
                            .background(
                                Image(systemName: "cart")
                                    .resizable()
                            )
                            .offset(x: -37.50, y: 0)
                    }
                }
                
                .frame(width: 133, height: 40)
                .offset(x: 406.50, y: 11)
                
                Button(action: {
                    // Define what the button should do when tapped
                }) {
                    // The view that represents the button's appearance
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 133, height: 40)
                            .background(Color(red: 0.99, green: 0.83, blue: 0))
                            .cornerRadius(54)
                        Text("Buy")
                            .font(Font.custom("Itim", size: 24))
                            .foregroundColor(.black)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 30, height: 30)
                            .background(
                                Image(systemName: "cart")
                                    .resizable()
                            )
                            .offset(x: -37.50, y: 0)
                    }
                }
                
                .frame(width: 133, height: 40)
                .offset(x: 199.50, y: 11)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 217, height: 68.99)
                        .background(Color(red: 0.44, green: 0.76, blue: 0.58))
                        .cornerRadius(20)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 56.45, height: 56.45)
                        .background(
                            Image("Crystal")
                                .resizable()
                        )
                        .offset(x: -70.24, y: -0)
                    Text("Crystal")
                        .font(Font.custom("Itim", size: 32))
                        .foregroundColor(.black)
                        .offset(x: 14.50, y: -4.51)
                }
                .frame(width: 217, height: 68.99)
                .offset(x: -253.50, y: -186.49)
            }
            
            Group {
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 173, height: 55)
                        .background(Color(red: 0.87, green: 0.55, blue: 0.55))
                        .cornerRadius(20)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 37, height: 37)
                        .background(
                            Image("Reward")
                                .resizable()
                        )
                        .offset(x: -56, y: 0)
                    Text("Reward")
                        .font(Font.custom("Itim", size: 24))
                        .foregroundColor(.black)
                        .offset(x: 16, y: -1)
                }
                .frame(width: 173, height: 55)
                .offset(x: -231.50, y: -106.50)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169, height: 164)
                        .background(.white)
                        .cornerRadius(35)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 141, height: 141)
                        .background(
                            Image("lettuce")
                                .resizable()
                        )
                        .offset(x: 0, y: -0.50)
                }
                .frame(width: 169, height: 164)
                .offset(x: 199.50, y: -144)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169, height: 164)
                        .background(.white)
                        .cornerRadius(35)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 138, height: 138)
                        .background(
                            Image("radish")
                                .resizable()
                        )
                        .offset(x: 0.50, y: 0)
                }
                .frame(width: 169, height: 164)
                .offset(x: -7.50, y: -144)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169, height: 164)
                        .background(.white)
                        .cornerRadius(35)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 134, height: 134)
                        .background(
                            Image("baby-toy")
                                .resizable()
                        )
                        .offset(x: 0.50, y: 0)
                }
                .frame(width: 169, height: 164)
                .offset(x: 406.50, y: -144)
                
                Button(action: {
                    // Define what the button should do when tapped
                }) {
                    // The view that represents the button's appearance
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 133, height: 40)
                            .background(Color(red: 0.99, green: 0.83, blue: 0))
                            .cornerRadius(54)
                        Text("Buy")
                            .font(Font.custom("Itim", size: 24))
                            .foregroundColor(.black)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 30, height: 30)
                            .background(
                                Image(systemName: "cart")
                                    .resizable()
                            )
                            .offset(x: -37.50, y: 0)
                    }
                }
                
                
                .frame(width: 133, height: 40)
                .offset(x: -9.50, y: 11)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 36, height: 36)
                        .background(
                            Image("Crystal")
                                .resizable()
                        )
                        .offset(x: -14, y: 0)
                    Text("20")
                        .font(Font.custom("Itim", size: 24))
                        .foregroundColor(.black)
                        .offset(x: 18, y: 0.50)
                }
                .frame(width: 64)
                .offset(x: -18, y: -37)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 36, height: 36)
                        .background(
                            Image("Crystal")
                                .resizable()
                        )
                        .offset(x: -14, y: 0)
                    Text("30")
                        .font(Font.custom("Itim", size: 24))
                        .foregroundColor(.black)
                        .offset(x: 18, y: 0.50)
                }
                .frame(width: 64)
                .offset(x: 200, y: -36)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 36, height: 36)
                        .background(
                            Image("Crystal")
                                .resizable()
                        )
                        .offset(x: -13, y: 0)
                    Text("35")
                        .font(Font.custom("Itim", size: 24))
                        .foregroundColor(.black)
                        .offset(x: 18, y: 0.50)
                }
                .frame(width: 62)
                .offset(x: 406, y: -37)
                Text("40")
                    .font(Font.custom("Itim", size: 24))
                    .foregroundColor(.black)
                    .offset(x: 1, y: 249.50)
                
                Button(action: {
                    // Define what the button should do when tapped
                }) {
                    // The view that represents the button's appearance
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 133, height: 40)
                            .background(Color(red: 0.99, green: 0.83, blue: 0))
                            .cornerRadius(54)
                        Text("Buy")
                            .font(Font.custom("Itim", size: 24))
                            .foregroundColor(.black)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 30, height: 30)
                            .background(
                                Image(systemName: "cart")
                                    .resizable()
                            )
                            .offset(x: -37.50, y: 0)
                    }
                }
                
                
                .frame(width: 133, height: 40)
                .offset(x: 406.50, y: 297)
            }
            
            Group {
                Button(action: {
                    // Define what the button should do when tapped
                    print("Buy button was tapped")
                }) {
                    // The view that represents the button's appearance
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 133, height: 40)
                            .background(Color(red: 0.99, green: 0.83, blue: 0))
                            .cornerRadius(54)
                        Text("Buy")
                            .font(Font.custom("Itim", size: 24))
                            .foregroundColor(.black)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 30, height: 30)
                            .background(
                                Image(systemName: "cart")
                                    .resizable()
                            )
                            .offset(x: -37.50, y: 0)
                    }
                }
                .frame(width: 133, height: 40)
                .offset(x: 199.50, y: 297)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169, height: 164)
                        .background(.white)
                        .cornerRadius(35)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 123, height: 123)
                        .background(
                            Image("cookie")
                                .resizable()
                        )
                        .offset(x: 0, y: -0.50)
                }
                .frame(width: 169, height: 164)
                .offset(x: 199.50, y: 142)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169, height: 164)
                        .background(.white)
                        .cornerRadius(35)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 134, height: 134)
                        .background(
                            Image("carrot")
                                .resizable()
                        )
                        .offset(x: 0.50, y: 0)
                }
                .frame(width: 169, height: 164)
                .offset(x: -7.50, y: 142)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169, height: 164)
                        .background(.white)
                        .cornerRadius(35)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 135, height: 135)
                        .background(
                            Image("rc-car")
                                .resizable()
                            
                        )
                        .offset(x: 0, y: -0.50)
                }
                .frame(width: 169, height: 164)
                .offset(x: 406.50, y: 142)
                
                Button(action: {
                    // Define what the button should do when tapped
                }) {
                    // The view that represents the button's appearance
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 133, height: 40)
                            .background(Color(red: 0.99, green: 0.83, blue: 0))
                            .cornerRadius(54)
                        Text("Buy")
                            .font(Font.custom("Itim", size: 24))
                            .foregroundColor(.black)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 30, height: 30)
                            .background(
                                Image(systemName: "cart")
                                    .resizable()
                            )
                            .offset(x: -37.50, y: 0)
                    }
                }
                
                .frame(width: 133, height: 40)
                .offset(x: -9.50, y: 297)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 36, height: 36)
                    .background(
                        Image("Crystal")
                            .resizable()
                    )
                    .offset(x: -32, y: 249)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 36, height: 36)
                        .background(
                            Image("Crystal")
                                .resizable()
                        )
                        .offset(x: -14, y: 0)
                    Text("50")
                        .font(Font.custom("Itim", size: 24))
                        .foregroundColor(.black)
                        .offset(x: 18, y: 0.50)
                }
                .frame(width: 64)
                .offset(x: 200, y: 250)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 36, height: 36)
                        .background(
                            Image("Crystal")
                                .resizable()
                        )
                        .offset(x: -14, y: 0)
                    Text("60")
                        .font(Font.custom("Itim", size: 24))
                        .foregroundColor(.black)
                        .offset(x: 18, y: 0.50)
                }
                .frame(width: 64)
                .offset(x: 407, y: 249)
            }
        }
        .frame(width: 1194, height: 834)
        .background(Color(red: 0.99, green: 0.96, blue: 0.92))
    }
}

struct Shop_Previews: PreviewProvider {
    static var previews: some View {
        Shop()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

#Preview {
    Shop()
}
