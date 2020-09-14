//
//  buttonSave.swift
//  MyNotebook
//
//  Created by admin on 04/09/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct buttonSave: View {
    var message: String
    
    var body: some View {
        Button(action: {
            //self er et objekt.
            print(self.message)
        }){
            VStack {
                Text("Save")
                    .fontWeight(.semibold)
                    .font(.title)
                    .frame(width:100, height: 100)
                    .foregroundColor(Color.black)
            }
        }
    }
}

struct buttonSave_Previews: PreviewProvider {
    static var previews: some View {
        buttonSave(message: "aString")
    }
}
