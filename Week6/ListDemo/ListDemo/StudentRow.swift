//
//  StudentRow.swift
//  ListDemo
//
//  Created by Bennett Lee on 2/12/24.
//

import SwiftUI

struct StudentRow: View {
    let student: Student

    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            Text(student.name)
                .font(.title3)
            Text(student.hometown)
                .font(.caption)
                .bold()
                .foregroundStyle(Color.teal)
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    StudentRow(student: Student(name: "John", hometown: "Los Angeles"))
}
