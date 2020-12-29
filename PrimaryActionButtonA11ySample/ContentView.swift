//
//  ContentView.swift
//  PrimaryActionButtonA11ySample
//
//  Created by Angelo Stavrow on 2020-12-29.
//

import SwiftUI

let sampleData: [String] = [
    "Row 1",
    "Row 2",
    "Row 3",
    "Row 4",
    "Row 5",
    "Row 6"
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(sampleData, id: \.self) { row in
                    NavigationLink(row, destination: DetailView(sampleText: row))
                }
            }
            .navigationTitle("A11y Sample")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}, label: {
                        Image(systemName: "leaf")
                            .accessibilityLabel(Text("Leaf"))
                    })
                    .accessibilityHint(Text("Make like a tree"))
                }
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {}, label: {
                        Image(systemName: "square.and.pencil")
                            .accessibilityLabel(Text("New"))
                    })
                    .accessibilityHint(Text("Create a new thing"))
                }
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {}, label: {
                        Image(systemName: "arrow.clockwise")
                            .accessibilityLabel(Text("Reload"))
                    })
                    .accessibilityHint(Text("Or refresh, whatever"))
                }
            }
        }
    }
}

struct DetailView: View {
    @State var sampleText: String = "No data"
    var body: some View {
        Text(sampleText)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
