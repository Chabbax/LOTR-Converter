//
//  ContentView.swift
//  LOTR Converter
//
//  Created by Chandur Dissanayake on 2023-02-12.
//

import SwiftUI

struct ContentView: View {
    
    // Mutable variables (variable can change the value)
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack {
            // Background Image
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Pony Image
                Image("pony")
                    .resizable()
                    . scaledToFit()
                    . frame(height: 200)
                
                // Currency Exchange Text
                Text("Currency Exchange")
                    . font(.largeTitle)
                    . foregroundColor(.white)
                
                // Currency Conversion Section
                HStack {
                    // Left Convertion Section
                    VStack {
                        // Currency
                        HStack {
                            // Currency Image
                            Image("silverpiece")
                                . resizable()
                                . scaledToFit()
                                . frame(height: 33)
                            
                            // Currency Text
                            Text("Silver Peice")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, -5)
                        
                        // Text Feild
                        TextField("Amount", text: $leftAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(8)
                    }
                    .padding(.bottom)
                    
                    // Equal Convertion Section
                    Image(systemName: "equal")
                        . font(.largeTitle)
                        . foregroundColor(.white)
                    
                    // Right Convertion Section
                    VStack {
                        // Currency
                        HStack {
                            // Currency Text
                            Text("Gold Peice")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            // Currency Image
                            Image("goldpiece")
                                . resizable()
                                . scaledToFit()
                                . frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        
                        // Text Feild
                        TextField("Amount", text: $rightAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(8)
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.bottom)
                }
                .padding()
                .background(.black.opacity(0.5))
                .cornerRadius(40)
                
                Spacer()

                // Info Button
                HStack {
                    Spacer()

                    Button {
                        // Display exchange info screen
                    } label: {
                         Image(systemName: "info.circle.fill")
                    }
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.trailing)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
