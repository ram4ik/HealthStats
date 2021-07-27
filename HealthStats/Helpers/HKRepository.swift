//
//  HKRepository.swift
//  HealthStats
//
//  Created by Ramill Ibragimov on 27.07.2021.
//

import Foundation
import HealthKit

final class HKRepository {
    var store: HKHealthStore?
    
    let allTypes = Set([
        HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
        HKObjectType.quantityType(forIdentifier: .appleStandTime)!,
        HKObjectType.quantityType(forIdentifier: .appleExerciseTime)!,
        HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,
        HKObjectType.quantityType(forIdentifier: .stepCount)!
    ])
    
    var query: HKStatisticsCollectionQuery?
    
    init() {
        store = HKHealthStore()
    }
    
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        guard let store = store else {
            return
        }
        
        store.requestAuthorization(toShare: [], read: allTypes) { success, error in
            completion(success)
        }
    }
}
