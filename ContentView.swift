import SwiftUI
import SwiftData

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]


struct ContentView: View {
    
    var body: some View {
        BirthdaysPage()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
    
}
