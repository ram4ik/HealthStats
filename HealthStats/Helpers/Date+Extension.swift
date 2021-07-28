//
//  Date+Extension.swift
//  HealthStats
//
//  Created by ramil on 28.07.2021.
//

import Foundation

extension Date {
    static func firstDayOfWeek() -> Date {
        
        return Calendar(identifier: .iso8601).date(from: Calendar(identifier: .iso8601).dateComponents([.yearForWeekOfYear, .weekOfYear], from: Date())) ?? Date()
    }
}
