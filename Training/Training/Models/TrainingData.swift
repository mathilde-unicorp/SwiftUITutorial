//
//  TrainingData.swift
//  Training
//
//  Created by Ressier Mathilde on 26/08/2021.
//

import Foundation

struct TrainingData {
  static var sections = [
    SectionItem(name: "Haut du corps",
                items: [SectionItem(name: "10 min"), SectionItem(name: "15 min"), SectionItem(name: "Jusqu'à épuisement")]),
    SectionItem(name: "Bas du corps",
                items: [SectionItem(name: "10 min"), SectionItem(name: "15 min")]),
    SectionItem(name: "Dos",
                items: [SectionItem(name: "10 min"), SectionItem(name: "15 min")]),
    SectionItem(name: "Etirements",
                items: [SectionItem(name: "10 min"), SectionItem(name: "15 min")])
  ]
}

struct SectionItem: Identifiable {
  let id = UUID()
  let name: String
  let items: [SectionItem]

  init(name: String, items: [SectionItem] = []) {
    self.name = name
    self.items = items
  }
}

