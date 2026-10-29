//
//  OnboardingFlowPage.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 29/10/26.
//

import SwiftUI

struct OnboardingFlowPage: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturePage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    OnboardingFlowPage()
}
