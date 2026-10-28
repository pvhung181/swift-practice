//
//  WelcomePage.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 28/10/26.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70  ))
                    .foregroundStyle(.white)
                
                
            }
            Text("Welcome to my app")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
            
            Text("This is my first welcome page")
                .multilineTextAlignment(.center)
                .font(.title)
                .fontWeight(.regular)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
