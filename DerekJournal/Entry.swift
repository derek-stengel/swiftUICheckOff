//
//  Entry.swift
//  DerekJournal
//
//  Created by Derek Stengel on 6/20/24.
//
//

import Foundation
import SwiftData

@Model class Entry {
    var body: String
    var createdAt: Date
    var id: String
    @Attribute(.externalStorage) var imageData: Data?
    var title: String
    var journal: Journal?
    
    init(journal: Journal, title: String, body: String, imageData: Data?) {
        self.id = UUID().uuidString
        self.createdAt = Date()
        self.title = title
        self.body = body
        self.imageData = imageData
        self.journal = journal
    }
    
}
