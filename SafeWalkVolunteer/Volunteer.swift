//
//  Volunteer.swift
//  SafeWalkVolunteer
//  Lab exercise Created by Paul Inventado on 2/9/22.
//

import Foundation

protocol Volunteer: ObservableObject {
    var name: String { get set }
    var age: Int { get set }
    var maxHours: Int { get }
}

class SafeWalkVolunteer: Volunteer {
    var age: Int
    var name: String
    var maxHours: Int {
        if (age < 18) {
            return 1
        }
        return 3
    }
    
    init() {
        self.name = ""
        self.age = 0
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
