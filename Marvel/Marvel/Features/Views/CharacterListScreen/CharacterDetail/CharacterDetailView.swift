//
//  CharacterDetailView.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import SwiftUI

struct CharacterDetailView: View {
    @Binding var favorite: Bool
    var characters: ModelTest
    var body: some View {
        ScrollView {
            
            VStack {
                characters.image.resizable().frame(width: 300, height: 300).padding(20)
                Text(characters.shortDescription).padding(20).font(.system(size: 20))
                Text("APARECE EN ESTOS CÓMICS").font(.headline)
                Spacer()
            }
            
            .navigationTitle(characters.name.uppercased())
            .navigationBarTitleDisplayMode(.inline)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(Color.black, for: .navigationBar)
            .toolbar {
                Button {
                    favorite.toggle()
                } label: {
                    if favorite {
                        Image(systemName: "star.fill").foregroundStyle(.yellow)
                    } else {
                        Image(systemName: "star")
                    }
                }
            }
        }
    }
}

#Preview {
    CharacterDetailView(favorite: .constant(false), characters: ModelTest(name: "Spiderman", imageString: "", shortDescription: "With amazing spider-like", image: Image(systemName: "person.fill"), id: 1, favorite: false))
}
