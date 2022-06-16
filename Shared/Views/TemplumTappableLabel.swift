//
//  TemplumTappableLabel.swift
//  Templum
//
//  Created by federico mazzini on 16/6/22.
//

import SwiftUI

struct TemplumTappableLabel: View {
    
    let onTapped: () -> Void

    let fontsize: CGFloat = 14
    let textColor = Color.black

    @State var text: String

    var body: some View {
        Button(action: { onTapped() }, label: {
                Text(text)
                    .font(Font.system(size: fontsize))
                    .foregroundColor(textColor)
        })
        .padding(10)
    }
}

struct TemplumTappableLabel_Previews: PreviewProvider {
    static var previews: some View {
        TemplumTappableLabel(onTapped: {}, text: "Jonas Borges Andrade")
            .previewDevice("iPhone 13 Pro Max")
    }
}
