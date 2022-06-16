//
//  TemplumTextField.swift
//  Templum
//
//  Created by federico mazzini on 16/6/22.
//

import SwiftUI

struct TemplumTextField: View {

    let fontsize: CGFloat = 14
    let backgroundColor = Color.white
    let textColor = Color.black
    let borderColor = Color.yellow

    @Binding var value: String

    @State var isHighlighted = false

    var body: some View {
        TextField(value, text: $value)
            .frame(height: 45)
            .font(Font.system(size: fontsize))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(borderColor, lineWidth: 1)
                    .padding(-10)
            )
            .padding(10)
    }
}

struct TemplumTextField_Previews: PreviewProvider {
    static var previews: some View {
        TemplumTextField(value: .constant("Jonas Borges Andrade"))
            .previewDevice("iPhone 13 Pro Max")
    }
}
