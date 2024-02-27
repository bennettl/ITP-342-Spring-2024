//
//  Student.swift
//  ListDemo
//
//  Created by Bennett Lee on 2/12/24.
//

import Foundation

struct Student : Identifiable, Hashable {
    let name: String
    let hometown: String

    var id: String {
        name
    }
    
}

