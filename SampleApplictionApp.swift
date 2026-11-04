//
//  SampleApplictionApp.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 23/8/26.
//

import SwiftUI
import SwiftData

@main
struct SampleApplictionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: FriendBirthday.self)
        }
    }
}
