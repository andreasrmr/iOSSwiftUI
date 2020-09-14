//
//  MyTextView.swift
//  SwiftUIEditor
//
//  Created by Jon Eikholm on 11/09/2020.
//  Copyright © 2020 Jon Eikholm. All rights reserved.
//

import SwiftUI
import UIKit

struct MyTextView: UIViewRepresentable {
    @Binding var text:String
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView() //
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
        textView.delegate = context.coordinator
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator($text)
    }
    
    class Coordinator:NSObject, UITextViewDelegate{
        var text:Binding<String>
        init(_ text:Binding<String>) {
            self.text = text
        }
        func textViewDidChange(_ textView: UITextView) {
            self.text.wrappedValue = textView.text
        }
    }
    
    
}

struct MyTextView_Previews: PreviewProvider {
    @State static var text = "Hi there"
    static var previews: some View {
        MyTextView(text: $text)
    }
}
