//
//  Friend.swift
//  SampleAppliction
//
//  Created by Pham Viet Hung on 1/11/26.
//

import SwiftUI
import SwiftData

@Model
class FriendBirthday {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
    
    var isBirthdayToday: Bool {
         Calendar.current.isDateInToday(birthday)
     }
}

