import SwiftUI
import SwiftData

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]


struct ContentView: View {
    
    var body: some View {
       FriendsFavouriteMoviesPage()
            .modelContainer(SampleData.shared.modelContainer)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: FriendBirthday.self, inMemory: true)
        .modelContainer(for: Friend.self, inMemory: true)
    
}
