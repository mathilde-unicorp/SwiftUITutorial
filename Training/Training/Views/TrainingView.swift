//
//  TrainingView.swift
//  Training
//
//  Created by Ressier Mathilde on 26/08/2021.
//

import SwiftUI

struct TrainingView: View {

  let training: TrainingItem

  var body: some View {
    VStack {
      Text("\(training.name)")
      HStack {
        Image(systemName: "timer")
        Text("\(training.duration)")
      }
    }
  }
}

struct TrainingView_Previews: PreviewProvider {
    static var previews: some View {
      TrainingView(training: TrainingItem(name: "Etirements", duration: "10 min"))
    }
}
