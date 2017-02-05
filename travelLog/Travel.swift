//
//  Travel.swift
//  travelLog
//
//  Created by Nick Reichard on 2/4/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//
// Equatable 
// Private Keys
// failable Init 
// Dic Rep

import Foundation

class Travel: Equatable {
    
    // MARK: - Private Keys
    
    fileprivate static let nameKey = "name"
    fileprivate static let noteKey = "note"

    
    // MARK: - Properties
    
    var name: String
    var note: String
    
    init(name: String, note: String) {
        
        self.name = name
        self.note = note
        
    }
    
    // MARK: - Failable Initializer 
    
    convenience init?(dictionary: [String: Any]) {
        guard let name = dictionary[Travel.nameKey] as? String, let note = dictionary[Travel.noteKey] as? String else { return nil }
        self.init(name: name, note: note)
        }
    
    // MARK: - Dictionary Representation 
    
    var dictionaryRepresentation: [String: String] {
        return [Travel.nameKey: name, Travel.noteKey: note]
    }
    
    
}

func ==(lhs: Travel, rhs: Travel) -> Bool {
    return lhs.name == rhs.name && lhs.note == rhs.note
}

