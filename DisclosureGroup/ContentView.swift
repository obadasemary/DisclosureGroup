//
//  ContentView.swift
//  DisclosureGroup
//
//  Created by Abdelrahman Mohamed on 2.07.2020.
//

import SwiftUI

struct ContentView: View {

    @State private var animalsExpanded: Bool = true
    @State private var fruitsExpanded: Bool = false
    let animals = ["🦧", "🐘", "🐬", "🐑"]
    let fruits = ["🍉", "🍌", "🍇", "🍑", "🥝"]

    var body: some View {
        NavigationView {
            Form {
                DisclosureGroup(
                    isExpanded: $animalsExpanded,
                    content: {
                        HStack {
                            ForEach(animals, id: \.self) { animal in
                                Text(animal)
                                    .font(.system(size: 50))
                            }
                        }
                    },
                    label: { Text("Animals") }
                )

                DisclosureGroup(
                    isExpanded: $fruitsExpanded,
                    content: {
                        VStack {
                            ForEach(fruits, id: \.self) { fruit in
                                Text(fruit)
                                    .font(.system(size: 50))
                            }
                        }
                    },
                    label: { Text("Fruits") }
                )
            }
            .navigationTitle("DisclosureGroup")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
