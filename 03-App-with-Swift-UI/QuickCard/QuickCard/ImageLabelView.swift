//
//  ImageLabelView.swift
//  QuickCard
//
//  Created by Jonathan Wong on 4/21/20.
//  Copyright © 2020 Fatty Waffles Software. All rights reserved.
//

import SwiftUI

struct ImageLabelView: View {
  
  var imageName: String
  @Binding var text: String
  
  var body: some View {
    HStack {
      Image(systemName: imageName)
        .foregroundColor(.orange)
      Text(text)
    }
  }
}


struct ImageLabelView_Previews: PreviewProvider {
    static var previews: some View {
      ImageLabelView(imageName: "envelope.fill",
                     text: .constant("mobileunder10@gmail.com"))
        .previewLayout(.sizeThatFits)
    }
}
