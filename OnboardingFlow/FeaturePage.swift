//
//  FeaturePage.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 28/10/26.
//

import SwiftUI

struct FeaturePage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)

            FeatureCard(iconName: "person.2.crop.square.stack.fill",
                        description: "A multiline description about a feature paired with the image on the left.")
            
            FeatureCard(iconName: "quote.bubble.fill", description: "Short summary")
            
            Spacer()
                
        }
        .padding()
    }
}

#Preview {
    FeaturePage().background(Gradient(colors: gradientColors))
}
