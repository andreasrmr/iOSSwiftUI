//
//  ContentView.swift
//  SwiftUIEditor
//
//  Created by Jon Eikholm on 11/09/2020.
//  Copyright © 2020 Jon Eikholm. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var repo = Repo() // 2-way binding
    var body: some View {
        NavigationView{
            VStack {
                Button(action: {
                    self.repo.notes.append(Note(title: "x"))
                    print("btn press")
                }){
                    Text("Add Note")
                }
                List{
                    ForEach(self.repo.notes){ note in
                        NavigationLink(destination: DetailView(text: note.title, currentID: note.id, repo: self.repo)){
                            Text(note.title)
                            // vis denne note i DetailView
                        }
                    }
                }
            }.onAppear(){
                print("onappear")
                self.repo.notes.append(Note(title: "")) // tilføj
                self.repo.notes.remove(at: self.repo.notes.count-1) // slet
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
