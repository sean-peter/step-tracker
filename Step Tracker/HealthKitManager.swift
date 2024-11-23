//
//  HealthKitManager.swift
//  Step Tracker
//
//  Created by Sean Ryan on 23/11/2024.
//

import Foundation
import HealthKit
import Observation


@Observable class HealthKitManager {
    let store = HKHealthStore()
    
    let types: Set = [HKQuantityType(.stepCount), HKQuantityType(.bodyMass)]
    
    
}
