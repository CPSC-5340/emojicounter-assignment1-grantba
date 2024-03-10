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
            Text("\(title): ")
            ActionItem()
        }
        .padding()
        .foregroundColor(.accentColor)
    }
}

struct ActionItem: View {
    @State var emojiCounter: Int = 0
    
    var body: some View {
        HStack {
            Text(String(emojiCounter))
            Spacer()
            Image(systemName: "plus")
                .imageScale(.large)
                .padding(5)
                .clipShape(RoundedRectangle(cornerRadius: 60))
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 0.906285584, green: 0.001993658254, blue: 0.01113559771), lineWidth: 2)
                }
                .onTapGesture {
                    emojiCounter += 1
                }
            Image(systemName: "minus")
                .imageScale(.large)
                .padding(12)
                .clipShape(RoundedRectangle(cornerRadius: 60))
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 0.906285584, green: 0.001993658254, blue: 0.01113559771), lineWidth: 2)
                }
                .onTapGesture {
                    emojiCounter -= 1
                }
        }
    }
}
