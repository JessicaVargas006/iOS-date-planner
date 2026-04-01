//
//  DatePlannerApp.swift
//  DatePlanner
//
//  Created by  on 2/18/26.
//

import SwiftUI

@main
struct DatePlannerApp: App {
    @StateObject private var eventData = EventData()


    var body: some Scene {
        WindowGroup {
            NavigationView {
                EventList()
                Text("Select an Event")
                    .foregroundStyle(.secondary)}
            .environmentObject(eventData)


        }
    }
}
