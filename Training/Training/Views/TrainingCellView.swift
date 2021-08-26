//
//  CellView.swift
//  Training
//
//  Created by Ressier Mathilde on 26/08/2021.
//

import SwiftUI

struct TrainingCellView: View {
  let item: SectionItem

  var body: some View {
    HStack {
      Image(systemName: "timer")
      Text(item.name)
    }
  }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
      TrainingCellView(item: SectionItem(name: "Test"))
    }
}
