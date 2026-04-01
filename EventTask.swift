//
//  EventTask.swift
//  DatePlanner
//
//  Created by  on 2/18/26.
//

import Foundation


struct EventTask: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
