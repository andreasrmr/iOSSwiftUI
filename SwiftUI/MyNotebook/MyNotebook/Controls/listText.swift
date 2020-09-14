//
//  listText.swift
//  MyNotebook
//
//  Created by admin on 04/09/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct listText: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct listOfText: Identifiable {
    var id = UUID() // automatisk genereret id
    var indhold:String
}

struct listText_Previews: PreviewProvider {
    static var previews: some View {
        listText()
    }
}
