//
//  ContentView.swift
//  SwiftUIControllers
//
//  Created by admin on 04/09/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var text:String = "Insert Text here"
    let todoItems = [ToDoItem(indhold: "ryd op"),
    ToDoItem(indhold: "køb ind"),
    ToDoItem(indhold: "lav mad")]
    
    var body: some View {
        VStack {
            TextField("start here", text: $text)
            MyButton(message: text)
            List(todoItems){ item in
                Text(item.indhold)
                
            }
        }
    
    }
}
//Den her protokol har en id - derfor identifiable

struct ToDoItem: Identifiable {
    var id = UUID() // automatisk genereret id
    var indhold:String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
