//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Group {
                    ListItem(icon: "globe", title: "Counter")
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
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
    var icon: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .imageScale(.large)
            Text(title)
            Spacer()
            ActionItem()
        }
        .padding()
        .foregroundColor(.accentColor)
    }
}

struct ActionItem: View {
    var body: some View {
        Button("+", action: { print("Plus") })
        Button("-", action: { print("Minus") })
    }
}
