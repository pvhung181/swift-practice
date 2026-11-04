//
//  BirthdaysPage.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 1/11/26.
//

import SwiftUI
import SwiftData

struct BirthdaysPage: View {
    @Query(sort: \FriendBirthday.birthday) private var friends: [FriendBirthday]
    @Environment(\.modelContext) private var context
    
    @State private var newName = ""
    @State private var newDate = Date.now
    
    var body: some View {
        NavigationStack {
            List(friends) { friend in
                HStack {
                    if friend.isBirthdayToday {
                        Image(systemName: "birthday.cake")
                    }
                    
                    Text(friend.name)
                        .bold(friend.isBirthdayToday)
                    
                    Spacer()
                    
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
            }
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)
                    
                    DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date) {
                        TextField("Name", text: $newName)
                            .textFieldStyle(.roundedBorder)
                            .autocorrectionDisabled()
                    }
                    
                    
                    Button("Save") {
                        let newFriend = FriendBirthday(name: newName, birthday: newDate)
                        context.insert(newFriend)
                        newName = ""
                        newDate = .now
                        
                    }.bold()
                }
                .padding()
                .background(.bar)
            }
        }
    }
}

#Preview {
    BirthdaysPage().modelContainer(for: FriendBirthday.self, inMemory: true)
}
