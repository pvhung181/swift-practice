//
//  DiceRollerPage.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 29/10/26.
//

import SwiftUI

struct DiceRollerPage: View {
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
           Text("Dice Roller")
                .font(
                    .largeTitle
                        .lowercaseSmallCaps()
                        .bold()
                )
                .foregroundStyle(.white)

            HStack {
                ForEach(1...numberOfDice, id: \.description) {_ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                
                    withAnimation {
                        numberOfDice += 1
                    }
                }
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
            .tint(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(.appBackground)
        
    }
}

#Preview {
    DiceRollerPage()
}
