//
//  ContentView.swift
//  QuickCard
//
//  Created by Jonathan Wong on 4/14/20.
//  Copyright © 2020 Fatty Waffles Software. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack {
          ForEach(User.users) { user in
            NavigationLink(destination: VisitorInfoView(user: user)) {
              CardView(user: user)
                .padding(.vertical)
            }
          }
        }
      }.navigationBarTitle("Quick Card")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
        .environment(\.colorScheme, .light)
      ContentView()
        .environment(\.colorScheme, .dark)
    }
  }
}
