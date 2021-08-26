//
//  ContentView.swift
//  Training
//
//  Created by Ressier Mathilde on 26/08/2021.
//

import SwiftUI
import CoreData

struct TrainingListView: View {

  let trainingSections = TrainingData.sections

  var body: some View {
    NavigationView {
      List {
        ForEach(trainingSections) { section in
          Section(header: Text(section.name)) {
            ForEach(section.items) { item in
              NavigationLink(
                destination: TrainingView(training: TrainingItem(
                                            name: section.name,
                                            duration: item.name))
              ) {
                TrainingCellView(item: item)
              }
            }
          }
        }
      }
      .navigationTitle("Training")
      .listStyle(GroupedListStyle())
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    TrainingListView()
  }
}
