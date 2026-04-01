//
//  EventRow.swift
//  DatePlanner
//
//  Created by  on 2/21/26.
//

import SwiftUI

struct EventRow: View {
    let event: Event

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: event.symbol)
                .foregroundStyle(event.color)
                .font(.title3)
                .frame(width: 28)

            VStack(alignment: .leading, spacing: 4) {
                Text(event.title.isEmpty ? "Untitled Event" : event.title)
                    .font(.headline)

                Text(event.date, style: .date)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                if event.remainingTaskCount > 0 {
                    Text("\(event.remainingTaskCount) task\(event.remainingTaskCount == 1 ? "" : "s") left")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }

            Spacer()
        }
        .padding(.vertical, 4)
    }
}
