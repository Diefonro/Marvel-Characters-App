//
//  CharacterListView.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import SwiftUI

struct CharacterListView: View {
    @State private var showFavorites = false
    @EnvironmentObject var viewModel: ViewModel
    
    var charactersViewModel: CharacterListViewModel
    
    private var filteredCharacters: [ModelTest] {
        return viewModel.characters.filter { character in
            return !showFavorites || character.favorite
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
//                Toggle(isOn: $showFavorites) {
//                    Text("Show favorites")
//                }.padding()
                List(filteredCharacters, id: \.id) { characters in
                    NavigationLink(destination: CharacterDetailView(favorite: $viewModel.characters[characters.id].favorite, characters: characters)) {
                        CharacterRowView(character: characters)
                    }
                }.onAppear(perform: {
                    charactersViewModel.getCharacters()
                })
            }
            .navigationTitle("Marvel Characters")
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(Color.black, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CharacterListView(charactersViewModel: CharacterListViewModel())
}
