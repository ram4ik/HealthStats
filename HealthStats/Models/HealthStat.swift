//
//  HealthStat.swift
//  HealthStats
//
//  Created by Ramill Ibragimov on 27.07.2021.
//

import Foundation
import HealthKit

struct HealthStat: Identifiable {
    var id = UUID()
    var stat: HKQuantity?
    let date: Date
}
