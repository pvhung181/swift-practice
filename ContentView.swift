import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]


struct ContentView: View {
    
    var body: some View {
        VStack {
            Button("Go to onboarding flow") {
                
            }
            .buttonStyle(.glass)
            .padding()
            
            Button("Go to Dice Roller page") {
                
            }
            .buttonStyle(.glass)
        }
    }
}

#Preview {
    ContentView()
    
}
