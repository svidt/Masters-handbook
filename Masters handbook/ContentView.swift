//
//  ContentView.swift
//  Masters handbook
//
//  Created by Kristian Emil on 21/01/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var fadeIn: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Close up")
                    .resizable()
                VStack {
                    Text("Hello").background(Color.red)
                    Image(systemName: "person.fill")
                        .font(.largeTitle)
                        .opacity(fadeIn ? 1.0 : 0.0)
                        .animation(.easeInOut, value: fadeIn)
                    
                    Toggle("Switch", isOn: $fadeIn).labelsHidden().tint(.purple)
                    List {
                        ForEach(items) { item in
                            Text(item.name)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
