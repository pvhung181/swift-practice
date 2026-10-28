import SwiftUI
struct DayForcast : View {
    let dayOfWeek: String
    let isRainy: Bool
    let tempMax: Int
    let tempMin: Int
    
    var iconName: String {
        isRainy ? "sun.max.fill" : "cloud.bolt.rain"
    }
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(Font.headline )
            
            Image(systemName: iconName)
                .padding(Edge.Set.vertical, 40)
            
            Text("High: \(tempMax)")
            Text("Min: \(tempMin)")
        }
    }
}
