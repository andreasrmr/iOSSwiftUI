//
//  ContentView.swift
//  MyNotebook
//
//  Created by admin on 04/09/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "Insert text here"
    var body: some View {
        VStack {
            TextField("insertedText", text: $text)
                .frame(width: 350, height: 125)
                .border(Color.black, width: 1)
                //.fixedSize()
            buttonSave(message: text)
            Spacer()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
