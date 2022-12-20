//
//  ColorSlider.swift
//  BasicApp
//
//  Created by Phanupong Permpimol on 20/12/2565 BE.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var color:Color
    var body: some View {
        HStack {
            ColorSwatch(color: color)
            Slider(value: $value, in: 0...1, step: 0.01)
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    @State static var value = 0.5
    static var previews: some View {
        ColorSlider(value: $value, color: .red)
    }
}
