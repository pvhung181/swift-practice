//
//  FriendsFavouriteMoviesPage.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 4/11/26.
//

import SwiftUI
import SwiftData

struct FriendsFavouriteMoviesPage: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                FriendList()
            }
            
            Tab("Movies", systemImage: "film.stack") {
                MovieList()
            }
        }.tabViewStyle(.automatic)
        
    }
}

#Preview {
    FriendsFavouriteMoviesPage()
        .modelContainer(SampleData.shared.modelContainer)

}
