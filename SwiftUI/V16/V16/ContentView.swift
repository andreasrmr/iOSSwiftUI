//
//  ContentView.swift
//  V16
//
//  Created by admin on 04/09/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        VStack {
            Image("Hopetoun_falls")
                .resizable()
                .frame(width:60, height: 120)
                .shadow(radius: 22)
        
        }
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
