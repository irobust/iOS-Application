//
//  ColorSwatch.swift
//  BasicApp
//
//  Created by Phanupong Permpimol on 20/12/2565 BE.
//

import SwiftUI

struct ColorSwatch: View {
    var color: Color
    var body: some View {
        Image(systemName: "circle.fill")
            .foregroundColor(color)
    }
}

struct ColorSwatch_Previews: PreviewProvider {
    static var previews: some View {
        ColorSwatch(color: .red)
    }
}
