//
//  FILE.swift
//  SOLID lab
//
//  Created by Derek Stengel on 6/6/24.
//

import Foundation

struct User {
    var name: String
    var age: Int
}

struct Username {
    var username: String
    var email: String
}

// Single Responsibility Principle
protocol UserData {
    func saveUser(_ user: User)
    func fetchUser(withId id: String) -> User?
}

class UserDataBase: UserData {
    func saveUser(_ user: User) {
        // save user code
    }
    
    func fetchUser(withId id: String) -> User? {
        let person = User(name: "Derek", age: 21)
        return person
    }
}

// Open Closed Principle
protocol CreateProfileUsingUser {
    func chooseUsername(_ username: Username)
}

class gameOne: CreateProfileUsingUser {
    func chooseUsername(_ username: Username) {
        // creating username for game 1
    }
}

class gameTwo {
    private let createProfile: CreateProfileUsingUser
    
    init(createProfile: CreateProfileUsingUser) {
        self.createProfile = createProfile
    }
    
    func gameTwoProfile(_ username: Username) {
        createProfile.chooseUsername(username)
    }
}

// Liskov Substitution Principle
class Account {
    func features() {
        print("I have basic features")
    }
}

class PremiumAccount: Account {
    override func features() {
        print("I have all the best features")
    }
}

// Interface Segregation Principle
protocol UserFetchable {
    func fetchUsers() -> [User]
}

