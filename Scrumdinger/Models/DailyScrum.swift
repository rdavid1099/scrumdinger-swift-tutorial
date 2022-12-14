//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by ryan on 9/11/22.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme

    init(id: UUID = UUID(), title: String, attendees: [Attendee], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let lengthMinimum: Double = 5
    static let lengthMaximum: Double = 30

    struct Data {
        var title: String = ""
        var attendees: [Attendee] = []
        var lengthInMinutes: Double = lengthMinimum
        var theme: Theme = .seafoam
    }
    
    var data: Data {
        Data(
            title: title,
            attendees: attendees,
            lengthInMinutes: Double(lengthInMinutes),
            theme: theme
        )
    }

    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        theme = data.theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Hangout", attendees: [Attendee(name: "Doopy Dooper"), Attendee(name: "Funion Bunion")], lengthInMinutes: 15, theme: .oxblood),
        DailyScrum(title: "App Dev", attendees: Array(repeating: 0, count: 5).map { _ in Attendee.generateAttendee() }, lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: Array(repeating: 0, count: 9).map { _ in Attendee.generateAttendee() }, lengthInMinutes: 5, theme: .poppy)
    ]
}
