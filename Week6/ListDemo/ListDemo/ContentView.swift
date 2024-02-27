//
//  ContentView.swift
//  ListDemo
//
//  Created by Bennett Lee on 2/12/24.
//

import SwiftUI


struct ContentView: View {

    @State var students = [
        Student(name: "John", hometown: "Los Angeles"),
        Student(name: "Mary", hometown: "West Hollywood"),
        Student(name: "Tim", hometown: "Koreatown"),
        Student(name: "Jamie", hometown: "Inglewood"),
        Student(name: "Sarah", hometown: "Culver City")
    ]

    @State var selectedStudent: Student?

    var body: some View {
        NavigationStack {
            List($students, editActions: .delete, selection: $selectedStudent) {
                StudentRow(student: $0.wrappedValue)
            }
            .navigationTitle("Students")
            .font(.title)
            .refreshable {

            }
            .onChange(of: selectedStudent) { oldValue, newValue in
                print("student has change")
            }
        }
    }
}

#Preview {
    ContentView()
}
