//
//  FormatterHelper.swift
//  musicPlayer
//
//  Created by Alex Freitas on 25/06/21.
//

import Foundation

struct FormatterHelper {
    static func date(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateStyle = .long

        return dateFormatter.string(from: date)
    }

    static func time(for secs: Int) -> String {

        let hours = secs / 3600
        let minutes = (secs % 3600) / 60
        let seconds = (secs % 60)

        var h = ""
        var m = ""
        var s = ""

        if hours != 0 {
            h = "\(hours)h "
        }

        if minutes != 0 {
            m = "\(minutes)min "
        }

        if seconds != 0 {
            s = "\(seconds)s"
        }

        return h + m + s
    }
}
