//
//  Attendee.swift
//  Scrumdinger
//
//  Created by ryan on 9/13/22.
//

import Foundation

struct Attendee: Identifiable {
    let id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

extension Attendee {
    static func generateAttendee() -> Attendee {
        let names = ["Doopy Dooper", "Funion Bunion", "Katie", "Gray", "Euna", "Luis", "Darla", "Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"]
        
        return Attendee(name: names.randomElement() ?? "Bobby Hill")
    }
}
