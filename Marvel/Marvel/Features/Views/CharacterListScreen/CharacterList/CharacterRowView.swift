//
//  CharacterRowView.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import SwiftUI

struct CharacterRowView: View {
    var character: ModelTest
    var body: some View {
        HStack {
            character.image.resizable().frame(width: 100, height: 100).padding(10)
            VStack(alignment: .leading) {
                Text(character.name.uppercased())
                    .font(.title2)
                Text(character.shortDescription)
            }
            Spacer()
            if character.favorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    CharacterRowView(character: ModelTest(name: "Spiderman", imageString: "", shortDescription: "With amazing spider-like", image: Image(systemName: "person.fill"), id: 1, favorite: true))
}
