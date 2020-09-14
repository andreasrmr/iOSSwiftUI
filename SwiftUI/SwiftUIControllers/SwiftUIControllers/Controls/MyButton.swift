//
//  MyButton.swift
//  SwiftUIControllers
//
//  Created by admin on 04/09/2020.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct MyButton: View {
    var message:String
    
    var body: some View {
       //button tager 2 parametre
        //1. hvad skal ske
        //2. hvad skal der vises.
        Button(action: {
            //self er et objekt.
            print(self.message)
        }){
            VStack {
                Text("Press me")
            }
        }

    }
}

struct MyButton_Previews: PreviewProvider {
    static var previews: some View {
        MyButton(message: "Hello")
    }
}
