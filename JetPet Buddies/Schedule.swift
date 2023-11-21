//
//  Schedule.swift
//  JetPet Buddies
//
//  Created by Kelvin Chan on 17/11/2023.
//

import SwiftUI

struct Schedule: View {
    
    @State private var date1 = ""
    @State private var date1Loc1 = ""
    @State private var date1Loc2 = ""
    @State private var date1Loc3 = ""
    @State private var date1Loc4 = ""
    
    @State private var date2 = ""
    @State private var date2Loc1 = ""
    @State private var date2Loc2 = ""
    @State private var date2Loc3 = ""
    @State private var date2Loc4 = ""
    
    var body: some View {
        ZStack {
            Color(red: 0.99, green: 0.96, blue: 0.92).edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Button(action: {
                        // Action for back button
                    }) {
                        Image(systemName: "arrow.left.circle")
                            .font(Font.system(size: 48))
                    }
                    Spacer()
                    Text("Destination")
                        .font(Font.custom("Inter", size: 30))
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(15)
                }
                .padding(.horizontal)
                
                Spacer()
                
                HStack {
                    VStack(alignment: .leading, spacing: 20) {
                        Group {
                            Text("Date :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Date", text: $date1)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Text("Location1 :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Location 1", text: $date1Loc1)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Text("Location2 :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Location 2", text: $date1Loc2)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        Group {
                            Text("Location3 :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Location 3", text: $date1Loc3)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Text("Location4 :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Location 4", text: $date1Loc4)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Group {
                            Text("Date :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Date", text: $date2)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Text("Location1 :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Location1", text: $date2Loc1)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Text("Location2 :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Location2", text: $date2Loc2)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        Group {
                            Text("Location3 :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Location3", text: $date2Loc3)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Text("Location4 :")
                                .font(Font.custom("Inter", size: 20))
                            TextField("Location4", text: $date2Loc4)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button(action: {
                        // Action for done button
                    }) {
                        Text("Done")
                            .font(Font.custom("Inter", size: 30))
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(15)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
}

#Preview {
    Schedule()
}
