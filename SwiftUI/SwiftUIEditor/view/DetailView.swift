//
//  DetailView.swift
//  SwiftUIEditor
//
//  Created by Jon Eikholm on 11/09/2020.
//  Copyright © 2020 Jon Eikholm. All rights reserved.
//

import SwiftUI

struct DetailView: View {
//    var titel:String
    @State var text:String
    var currentID:UUID
    var repo:Repo
    var body: some View {
        VStack {
            MyTextView(text: $text)
            Button(action:{
                print("saved")
                // 1. find det rigtige Note i Repo
                // 2. overskriv dens title variabel
                self.repo.findNote(id: self.currentID).title = self.text
            }){
                Text("Save")
            }
        }.onDisappear(){
            // her vil det gemmes automatisk
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(text: "b", currentID: UUID(), repo: Repo())
    }
}
