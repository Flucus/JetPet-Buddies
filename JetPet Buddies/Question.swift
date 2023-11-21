//
//  Question.swift
//  JetPet Buddies
//
//  Created by Kelvin Chan on 17/11/2023.
//

import SwiftUI

struct Question: View {
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 74, height: 74)
                .background(
                    Image(systemName: "arrowshape.backward.circle")
                        .font(Font.system(size: 48))
                        .colorMultiply(.black)
                )
                .offset(x: -537, y: -359)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 74, height: 74)
                .background(
                    Image(systemName: "arrowshape.left")
                        .font(Font.system(size: 68))
                )
                .offset(x: -433, y: -88)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 74, height: 74)
                .background(
                    Image(systemName: "arrowshape.right")
                        .font(Font.system(size: 68))
                )
                .offset(x: 433, y: -88)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 726, height: 412)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(81)
                .offset(x: 0, y: -88)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 995, height: 109)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(40)
                .offset(x: -0.50, y: 197.50)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 198, height: 107)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(40)
                .offset(x: -363, y: 332.50)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 198, height: 107)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(40)
                .offset(x: 0, y: 332.50)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 198, height: 107)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(40)
                .offset(x: 363, y: 332.50)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 395, height: 63)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(30)
                .offset(x: 381.50, y: -362.50)
        }
        .frame(width: 1194, height: 834)
        .background(Color(red: 0.99, green: 0.96, blue: 0.92))
    }
}

struct Question_Previews: PreviewProvider {
    static var previews: some View {
        Question()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}

#Preview {
    Question()
}
