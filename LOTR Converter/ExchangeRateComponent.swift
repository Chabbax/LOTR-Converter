//
//  ExchangeRateComponent.swift
//  LOTR Converter
//
//  Created by Chandur Dissanayake on 2023-02-12.
//

import SwiftUI

struct ExchangeRateComponent: View {
    
    @State var leftImage: String
    @State var text : String
    @State var rightImage: String
    
    var body: some View {
        HStack {
            // Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(text)
            
            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExchangeRateComponent_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRateComponent(leftImage: "goldpenny", text: "1 Gold Penny = 4 Silver Pieces", rightImage: "silverpiece")
            .previewLayout(.sizeThatFits)
    }
}
