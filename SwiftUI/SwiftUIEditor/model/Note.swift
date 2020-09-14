//
//  Note.swift
//  SwiftUIEditor
//
//  Created by Jon Eikholm on 11/09/2020.
//  Copyright © 2020 Jon Eikholm. All rights reserved.
//

import Foundation
class Note:Identifiable {
    var id = UUID()
    var title:String
    init(title:String) {
        self.title = title
    }
    
}
