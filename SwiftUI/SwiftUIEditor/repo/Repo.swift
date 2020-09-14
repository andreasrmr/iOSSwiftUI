//
//  Repo.swift
//  SwiftUIEditor
//
//  Created by Jon Eikholm on 11/09/2020.
//  Copyright © 2020 Jon Eikholm. All rights reserved.
//

import Foundation
class Repo:ObservableObject{
    @Published var notes = [Note]() // tom samling af Note objekter
    
    init() {
        notes.append(Note(title: "A"))
        notes.append(Note(title: "B"))
        notes.append(Note(title: "C"))
        
    }
    
    func findNote(id:UUID) -> Note {
        // 1. loop igennem listen
        // 2. returnér objektet med id
        for n in 0..<notes.count {
            if notes[n].id == id {
                return notes[n]
            }
        }
        return Note(title: "empty")
    }
    
}
