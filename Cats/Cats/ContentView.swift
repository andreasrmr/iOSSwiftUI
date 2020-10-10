//
//  ContentView.swift
//  Cats
//
//  Created by admin on 10/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Cat1()){
                    Text("Cat1")
                };
                NavigationLink(destination: Cat2()){
                    Text("Cat2")
                };
                NavigationLink(destination: Cat3()){
                    Text("Cat3")
                };
            }.navigationBarTitle(Text("Cats"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

