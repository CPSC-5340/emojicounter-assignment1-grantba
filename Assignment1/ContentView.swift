//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ListItem()
        }
        .listStyle(.grouped)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct ListItem: View {
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
            Text("Counter")
        }
        .padding()
        .foregroundColor(.accentColor)
    }
}
