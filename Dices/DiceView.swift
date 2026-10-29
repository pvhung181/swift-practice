//
//  DiceView.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 29/10/26.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.black, .white)
            
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
            
        }
    }
}

#Preview {
    DiceView()
}
