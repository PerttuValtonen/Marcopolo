//
//  ContentView.swift
//  Marcopolo
//
//  Created by Perttu Valtonen on 1.6.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State var input: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                //print("Entered text: \(text)")
                if (text == "Marco")
                    { input = "Polo" }
                else { input = text }
            }) {
                Text("Print")
                    .foregroundColor(.blue)
            }
            Text(input)
                .foregroundColor(.blue)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
