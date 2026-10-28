//
//  FeatureCard.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 28/10/26.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String
    
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50)
                .padding(.trailing, 10)
            
            Text(description)
                .foregroundStyle(.white)
            
            Spacer()
        }
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 12).foregroundStyle(.tint).opacity(0.25).contrast(-0.4))
        
    }
}

#Preview {
    FeatureCard(iconName: "person.2.crop.square.stack.fill",
                description: "A multiline description about a feature paired with the image on the left.")
    
}
