//
//  ContentView.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        CharacterListView().environmentObject(viewModel)
    }
}

#Preview {
    CharacterListView().environmentObject(ViewModel())
}
