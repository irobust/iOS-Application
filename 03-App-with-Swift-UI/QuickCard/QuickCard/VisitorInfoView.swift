//
//  VisitorInfoView.swift
//  QuickCard
//
//  Created by Jonathan Wong on 4/29/20.
//  Copyright © 2020 Fatty Waffles Software. All rights reserved.
//

import SwiftUI

struct VisitorInfoView: View {
  
  @State var user: User
  @State var isChartHidden = true
  @State var isChartLoaded = false
  
  var body: some View {
    VStack {
      CardView(user: user)
        .gesture(TapGesture()
          .onEnded {
            withAnimation(.easeInOut, {
              self.isChartHidden.toggle()
            })
          }
      )
      
      if !isChartHidden {
        GeometryReader { proxy in
          HStack(alignment: .bottom) {
            BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                    width: proxy.size.width * 0.16,
                    height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views) : 0.0,
                    label: "Views")
            BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                    width: proxy.size.width * 0.16,
                    height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.events) : 0.0,
                    label: "Events")
            BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                    width: proxy.size.width * 0.16,
                    height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.badges) : 0.0,
                    label: "Badges")
            BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                    width: proxy.size.width * 0.16,
                    height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.actions) : 0.0,
                    label: "Actions")
            BarView(color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
                    width: proxy.size.width * 0.16,
                    height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.duration) : 0.0,
                    label: "Duration")
          }.frame(height: 0.5 * proxy.size.height)
            .animation(.easeInOut(duration: 1.0))
            .onAppear {
              self.isChartLoaded = true
          }
        }
        .transition(.move(edge: .bottom))
        .onDisappear {
          self.isChartLoaded = false
        }
      }
    }
  }
}

struct VisitorInfoView_Previews: PreviewProvider {
  static var previews: some View {
    VisitorInfoView(user: User(firstName: "Nermal",
                               lastName: "Vero",
                               title: "Software Engineer",
                               email: "nvero@yahoo.com",
                               companyUrl: "vero123.com",
                               address: "8822 Royal Road",
                               visit: Visit(views: 10, events: 20, badges: 3, actions: 40, duration: 50)))
  }
}
