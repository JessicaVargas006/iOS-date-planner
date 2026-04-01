//
//  EventEditor.swift
//  DatePlanner
//
//  Created by  on 2/21/26.
//

import SwiftUI

struct EventEditor: View {
    @Binding var event: Event
    var isNew: Bool = false

    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var eventData: EventData

    var body: some View {
        Form {
            Section("Event") {
                TextField("Title", text: $event.title)
                DatePicker("Date", selection: $event.date)
            }

            Section("Tasks") {
                ForEach($event.tasks) { $task in
                    HStack {
                        Button {
                            task.isCompleted.toggle()
                        } label: {
                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                                .foregroundStyle(task.isCompleted ? .green : .secondary)
                        }
                        .buttonStyle(.plain)

                        TextField("Task", text: $task.text)
                    }
                }

                Button {
                    event.tasks.append(EventTask(text: ""))
                } label: {
                    Label("Add Task", systemImage: "plus")
                }
            }
        }
        .navigationTitle(isNew ? "New Event" : "Edit Event")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    if isNew, !eventData.exists(event) {
                        eventData.add(event)
                    }
                    dismiss()
                }
            }
        }
    }
}
