//
//  ExchangeView.swift
//  LOTR Converter
//
//  Created by Chandur Dissanayake on 2023-02-12.
//

import SwiftUI

struct ExchangeView: View {
    var body: some View {
        ZStack {
            // Background Image
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                // Title Text
                Text("Exchange Rates")
                    . font(.largeTitle)
                
                // Body Text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2 )
                
                // Exchange rates
                ExchangeRateComponent(leftImage: "goldpiece", text: "1 Gold Penny = 4 Silver Pieces", rightImage: "goldpenny")
                ExchangeRateComponent(leftImage: "silverpiece", text: "1 Gold Penny = 2224 Silver Pieces", rightImage: "silverpenny")
                ExchangeRateComponent(leftImage: "goldpiece", text: "1 Gold Penny = 100 Silver Pieces", rightImage: "goldpenny")
                ExchangeRateComponent(leftImage: "silverpiece", text: "1 Gold Penny = 14 Silver Pieces", rightImage: "copperpenny")

                // Done button
            }
        }
    }
}

struct ExchangeView_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeView()
    }
}
