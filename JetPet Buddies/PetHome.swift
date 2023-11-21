//
//  SwiftUIView.swift
//  JetPet Buddies
//
//  Created by Kelvin Chan on 14/11/2023.
//
import SwiftUI

struct PetHome: View {
    @State private var showShop = false
    @Binding var showPetHome: Bool
    
    var body: some View {
        VStack {
            // Top section with back button and resource indicators
            HStack {
                Button(action: {
                    self.showPetHome = false
                }) {
                    Image(systemName: "arrow.backward.circle") // System name for the back arrow icon
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40) // Adjust the size as needed
                }
                .padding(.leading)
                
                Spacer()
                
                ResourceIndicatorView(imageName: "Crystal", amount: "500")
                ResourceIndicatorView(imageName: "Energy", amount: "50%")
                ResourceIndicatorView(imageName: "Reward", amount: "350")
                
                Spacer()
            }
            .padding(.top, 40)
            
            Spacer()
            
            // Rabbit image in the center
            Image("Rabbit") // Your actual rabbit image asset
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            // Bottom section with action buttons
            HStack(spacing: 30) {
                ActionButton(title: "Eat")
                ActionButton(title: "Play")
                ActionButton(title: "Sleep")
                ActionButton(title: "Shopping")
            }
            .padding(.bottom, 30)
        }
        .background(Color(red: 0.99, green: 0.96, blue: 0.92).edgesIgnoringSafeArea(.all))
    }
}

struct ResourceIndicatorView: View {
    var imageName: String
    var amount: String
    
    var body: some View {
        HStack {
            Image(imageName) // Ensure this matches the image asset name
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50) // Increased size for the image
            
            Text(amount)
                .font(Font.custom("YourFontName", size: 28)) // Increased font size
                .padding(.horizontal, 20) // Increased padding for larger appearance
                .background(Color.gray.opacity(0.3))
                .cornerRadius(20) // Adjusted for larger size
        }
        .frame(height: 60) // Increased frame height
        .padding(.horizontal, 20) // Extra padding around the HStack
        .background(Color.gray.opacity(0.3))
        .cornerRadius(20) // Adjusted corner radius for larger size
    }
}


struct ActionButton: View {
    var title: String
    
    var body: some View {
        Button(action: {
            // Define the button action here
        }) {
            Text(title)
                .font(Font.custom("Itim", size: 40)) // Replace with your actual font
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color(red: 0.20, green: 0.70, blue: 0.82)) // Use the color that matches your design
                .cornerRadius(50)
        }
    }
}


struct PetHome_Previews: PreviewProvider {
    static var previews: some View {
        PetHome(showPetHome: .constant(true))
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
}


