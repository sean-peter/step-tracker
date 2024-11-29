//
//  Step_TrackerApp.swift
//  Step Tracker
//
//  Created by Sean Ryan on 12/11/2024.
//

import SwiftUI

@main
struct Step_TrackerApp: App {
    
    let hkManager = HealthKitManager()
    
    
    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environment(hkManager)
        }
    }
}
