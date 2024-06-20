//
//  TodosController.swift
//  SwiftUITodoWalkthrough
//
//  Created by Derek Stengel on 5/28/24.
//

import Foundation

class TodosController: ObservableObject {
    @Published var sections: [TodoSection]
    
    init() {
        self.sections = TodoSection.dummySections
    }
}
