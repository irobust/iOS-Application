//
//  ContentView.swift
//  BasicApp
//
//  Created by Phanupong Permpimol on 20/12/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var red:Double = 0.5
    @State var green:Double = 0.5
    @State var blue:Double = 0.5
    
    var body: some View {
        VStack {
            Image(systemName: "cloud.rain.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color(red: red, green: green, blue: blue))
            Text("Hello, world!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            HStack {
                Text("Hello SwiftUI")
                Text("Description")
            }
            
            ColorSlider(value: $red, color: .red)
            ColorSlider(value: $green, color: .green)
            ColorSlider(value: $blue, color: .blue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
