//
//  EventData.swift
//  DatePlanner
//
//  Created by  on 2/18/26.
//

import SwiftUI

class EventData: ObservableObject {
    @Published var events: [Event] = [
        // MARK: - Real appointments / commitments (your actual schedule)

        Event(symbol: "video.fill",
              color: .purple,
              title: "Virtual Interview Panel",
              tasks: [
                  EventTask(text: "Test mic/camera"),
                  EventTask(text: "Review role + company notes"),
                  EventTask(text: "Prepare 3 STAR examples"),
                  EventTask(text: "Have questions ready")
              ],
              date: Date.from(month: 2, day: 19, year: 2026, hour: 10, minute: 0)),

        Event(symbol: "flag.fill",
              color: .indigo,
              title: "Drill Weekend (Feb 20–22)",
              tasks: [
                  EventTask(text: "Uniform / gear check"),
                  EventTask(text: "Pack documents + notebook"),
                  EventTask(text: "Set alarms / commute timing"),
                  EventTask(text: "Meal/snack prep")
              ],
              date: Date.from(month: 2, day: 20, year: 2026, hour: 6, minute: 0)),

        Event(symbol: "heart.fill",
              color: .pink,
              title: "Therapy with Heather",
              tasks: [
                  EventTask(text: "Write down topics to discuss"),
                  EventTask(text: "Have water nearby"),
                  EventTask(text: "Find a quiet space 10 min early")
              ],
              date: Date.from(month: 2, day: 23, year: 2026, hour: 13, minute: 0)),

        Event(symbol: "person.3.fill",
              color: .blue,
              title: "AccessTECH Biweekly Meet (Marek Zuccaro)",
              tasks: [
                  EventTask(text: "Join on time"),
                  EventTask(text: "Bring questions about program progress"),
                  EventTask(text: "Take notes on next steps")
              ],
              date: Date.from(month: 2, day: 23, year: 2026, hour: 17, minute: 0)),

        Event(symbol: "laptopcomputer",
              color: .orange,
              title: "Apple Swift Cert Exam (MDC Building R)",
              tasks: [
                  EventTask(text: "Bring ID"),
                  EventTask(text: "Arrive early / locate Building R"),
                  EventTask(text: "Charge phone"),
                  EventTask(text: "Quick SwiftUI review in the morning")
              ],
              date: Date.from(month: 2, day: 24, year: 2026, hour: 12, minute: 30)),

        Event(symbol: "phone.fill",
              color: .teal,
              title: "Call VA Education Center (Benefits + Pay)",
              tasks: [
                  EventTask(text: "Have case details ready"),
                  EventTask(text: "List benefit/pay discrepancies"),
                  EventTask(text: "Ask for reference number"),
                  EventTask(text: "Write down rep name + time")
              ],
              date: Date.from(month: 2, day: 25, year: 2026, hour: 9, minute: 0)),

        Event(symbol: "wineglass.fill",
              color: .red,
              title: "Bartending @ Redlands Bar (8 PM–2 AM)",
              tasks: [
                  EventTask(text: "Black outfit / work shoes ready"),
                  EventTask(text: "Bring essentials"),
                  EventTask(text: "Confirm shift details"),
                  EventTask(text: "Plan ride home after shift")
              ],
              date: Date.from(month: 2, day: 27, year: 2026, hour: 20, minute: 0)),

        // MARK: - Extra realistic VA appointments

        Event(symbol: "figure.walk",
              color: .mint,
              title: "VA Chiro Appointment",
              tasks: [
                  EventTask(text: "Bring ID"),
                  EventTask(text: "Note areas of discomfort"),
                  EventTask(text: "Ask for stretches/home exercises")
              ],
              date: Date.from(month: 3, day: 3, year: 2026, hour: 11, minute: 0)),

        Event(symbol: "cross.case.fill",
              color: .green,
              title: "VA Primary Care Follow-Up",
              tasks: [
                  EventTask(text: "Bring medication list"),
                  EventTask(text: "Discuss symptoms/updates"),
                  EventTask(text: "Ask about referrals if needed")
              ],
              date: Date.from(month: 3, day: 10, year: 2026, hour: 9, minute: 30)),

        Event(symbol: "drop.fill",
              color: .cyan,
              title: "VA Lab Work",
              tasks: [
                  EventTask(text: "Check fasting instructions"),
                  EventTask(text: "Bring ID"),
                  EventTask(text: "Hydrate after appointment")
              ],
              date: Date.from(month: 3, day: 17, year: 2026, hour: 8, minute: 0)),

        // MARK: - Personalized realistic events (kept from before)

        Event(symbol: "person.text.rectangle.fill",
              color: .blue,
              title: "Access Tech Interview Prep",
              tasks: [
                  EventTask(text: "Review cloud computing basics"),
                  EventTask(text: "Practice 3 mock interview answers"),
                  EventTask(text: "Prepare STAR examples from military/admin experience"),
                  EventTask(text: "Test camera, mic, and internet setup")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 3)),

        Event(symbol: "chart.bar.fill",
              color: .indigo,
              title: "CAP 4631C ML Assignment",
              tasks: [
                  EventTask(text: "Review professor notebook steps"),
                  EventTask(text: "Run model + verify outputs"),
                  EventTask(text: "Add markdown justifications"),
                  EventTask(text: "Final check before submission")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 2)),

        Event(symbol: "iphone",
              color: .green,
              title: "Citizenship Quiz App Update",
              tasks: [
                  EventTask(text: "Fix one UI issue in SwiftUI"),
                  EventTask(text: "Add progress tracking improvements"),
                  EventTask(text: "Review state-specific question flow"),
                  EventTask(text: "Prepare notes for next build")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 10)),

        Event(symbol: "book.fill",
              color: .purple,
              title: "Bilingual Puzzle Book Work Session",
              tasks: [
                  EventTask(text: "Finalize 2 crossword themes"),
                  EventTask(text: "Create matching exercise page"),
                  EventTask(text: "Add fill-in-the-word section"),
                  EventTask(text: "Draft real-life conversation practice")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 14)),

        Event(symbol: "dumbbell.fill",
              color: .mint,
              title: "Workout + Meal Prep Reset",
              tasks: [
                  EventTask(text: "Gym bag ready"),
                  EventTask(text: "Plan 3 high-protein meals"),
                  EventTask(text: "Prep water + electrolytes"),
                  EventTask(text: "Schedule workout blocks for the week")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 30)),

        Event(symbol: "film.fill",
              color: .pink,
              title: "At-Home Date Night",
              tasks: [
                  EventTask(text: "Pick movie from the list"),
                  EventTask(text: "Set up snacks + drinks"),
                  EventTask(text: "Tidy living room"),
                  EventTask(text: "Cue up cozy lighting")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 4)),

        Event(symbol: "house.fill",
              color: .orange,
              title: "Home Project Planning",
              tasks: [
                  EventTask(text: "Review budget numbers"),
                  EventTask(text: "Compare quotes/material options"),
                  EventTask(text: "List priorities (must-have vs later)"),
                  EventTask(text: "Create next-step checklist")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 24)),

        Event(symbol: "shield.fill",
              color: .cyan,
              title: "Navy Reserve Admin Follow-Up",
              tasks: [
                  EventTask(text: "Check uniform/order status"),
                  EventTask(text: "Organize required documents"),
                  EventTask(text: "Confirm next reporting steps"),
                  EventTask(text: "Save copies in folder")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 45)),

        Event(symbol: "briefcase.fill",
              color: .teal,
              title: "Portfolio + Resume Refresh",
              tasks: [
                  EventTask(text: "Update current projects"),
                  EventTask(text: "Add app/testing experience"),
                  EventTask(text: "Polish one project screenshot"),
                  EventTask(text: "Tailor summary for next application")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 7)),

        Event(symbol: "checkmark.seal.fill",
              color: .gray,
              title: "Mock Interview Practice (Completed)",
              tasks: [
                  EventTask(text: "Practice introduction"),
                  EventTask(text: "Review feedback notes"),
                  EventTask(text: "Refine confidence + pacing")
              ],
              date: Date.roundedHoursFromNow(-60 * 60 * 24 * 5)),

        Event(symbol: "graduationcap.fill",
              color: .primary,
              title: "Next Semester Prep",
              tasks: [
                  EventTask(text: "Review class schedule"),
                  EventTask(text: "Set up folders and notes"),
                  EventTask(text: "Check required software/tools"),
                  EventTask(text: "Plan weekly study blocks")
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 120))
    ]

    func delete(_ event: Event) {
        events.removeAll { $0.id == event.id }
    }

    func add(_ event: Event) {
        events.append(event)
    }

    func exists(_ event: Event) -> Bool {
        events.contains(event)
    }

    func sortedEvents(period: Period) -> Binding<[Event]> {
        Binding<[Event]>(
            get: {
                self.events
                    .filter {
                        switch period {
                        case .nextSevenDays:
                            return $0.isWithinSevenDays
                        case .nextThirtyDays:
                            return $0.isWithinSevenToThirtyDays
                        case .future:
                            return $0.isDistant
                        case .past:
                            return $0.isPast
                        }
                    }
                    .sorted { $0.date < $1.date }
            },
            set: { events in
                for event in events {
                    if let index = self.events.firstIndex(where: { $0.id == event.id }) {
                        self.events[index] = event
                    }
                }
            }
        )
    }
}

enum Period: String, CaseIterable, Identifiable {
    case nextSevenDays = "Next 7 Days"
    case nextThirtyDays = "Next 30 Days"
    case future = "Future"
    case past = "Past"

    var id: String { rawValue }
    var name: String { rawValue }
}

extension Date {
    static func from(month: Int, day: Int, year: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day

        let calendar = Calendar(identifier: .gregorian)
        return calendar.date(from: dateComponents) ?? Date()
    }

    static func from(month: Int, day: Int, year: Int, hour: Int, minute: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.hour = hour
        dateComponents.minute = minute

        let calendar = Calendar(identifier: .gregorian)
        return calendar.date(from: dateComponents) ?? Date()
    }

    // NOTE: Tutorial name kept for compatibility (parameter is really seconds)
    static func roundedHoursFromNow(_ hours: Double) -> Date {
        let exactDate = Date(timeIntervalSinceNow: hours)
        guard let hourRange = Calendar.current.dateInterval(of: .hour, for: exactDate) else {
            return exactDate
        }
        return hourRange.end
    }
}
