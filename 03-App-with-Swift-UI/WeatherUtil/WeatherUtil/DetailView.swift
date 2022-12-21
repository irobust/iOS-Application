//
//  DetailView.swift
//  WeatherUtil
//
//  Created by Todd Perkins on 10/1/21.
//

import SwiftUI

struct DetailView: View {
    
    var data: WeatherData
    @State var isPopoverShowing = false
    
    var body: some View {
        VStack {
            Text(data.day)
            Button(action: {
                isPopoverShowing = true
            }) {
                Text("Show Popover")
            }
            .padding()
            .sheet(isPresented: $isPopoverShowing) {
                Text("H \(data.high)º L \(data.low)º F")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}
