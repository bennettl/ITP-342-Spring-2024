//
//  StudentTestDemoTests.swift
//  StudentTestDemoTests
//
//  Created by Bennett Lee on 2/5/24.
//

import XCTest
@testable import StudentTestDemo


final class StudentTestDemoTests: XCTestCase {
    var studentManager = StudentManager()

    // Before all tests
    override class func setUp() {
        print("before all tests")
    }

    // Before each test
    override func setUp() {
        print("before each test")
        studentManager = StudentManager()
    }

    func testInsertAStudent() {
        // Set the context
        let name = "John"
        let student = Student(name: name)

        // Perform a single operation
        studentManager.insert(student: student, at: 0)

        // Perform an assertion
        XCTAssertEqual(1, studentManager.numberOfStudents)
        XCTAssertEqual(name, studentManager.student(at: 0).name)
    }

    func testDelete() {
        // Set the context
        let name = "John"
        let student = Student(name: name)
        studentManager.insert(student: student, at: 0)

        // Perform a single operation
        studentManager.remove(at: 0)

        // Perform an assertion
        XCTAssertEqual(0, studentManager.numberOfStudents)
    }

}
