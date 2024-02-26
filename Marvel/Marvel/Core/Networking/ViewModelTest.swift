//
//  ViewModelTest.swift
//  Marvel
//
//  Created by Andrés Fonseca on 26/02/2024.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var characters: [ModelTest] = [ModelTest(name: "Spiderman", imageString: "", shortDescription: "With amazing spider-like", image: Image(systemName: "person.fill"), id: 0, favorite: false), ModelTest(name: "Thanos", imageString: "", shortDescription: "Using the power of the infinity stones", image: Image(systemName: "person.fill"), id: 1, favorite: true), ModelTest(name: "Black Panther", imageString: "", shortDescription: "As the king of the african jungle", image: Image(systemName: "person.fill"), id: 2, favorite: false), ModelTest(name: "Ironman", imageString: "", shortDescription: "Inventor Tony Stark", image: Image(systemName: "person.fill"), id: 3, favorite: false),  ModelTest(name: "Captain America", imageString: "", shortDescription: "America's World War II", image: Image(systemName: "person.fill"), id: 4, favorite: true)]
}
