//
//  TemplumButton.swift
//  Templum
//
//  Created by federico mazzini on 16/6/22.
//

import SwiftUI

struct TemplumButton: View {
    
    let onTapped: () -> Void
    
    let fontsize: CGFloat = 14
    let backgroundColor = Color.yellow
    let textColor = Color.black
    
    @State var title: String
    @State var isEnabled = true
    
    var body: some View {
        Button(action: onTapped, label: {
            Text(title)
                .font(Font.system(size: fontsize))
                .foregroundColor(textColor)
                .padding()
        })
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .disabled(isEnabled)
        .background(RoundedRectangle(cornerRadius: 10).fill(backgroundColor))
        .padding(10)
    }
}

struct TemplumButton_Previews: PreviewProvider {
    static var previews: some View {
        TemplumButton(onTapped: {}, title: "Press Me!")
            .previewDevice("iPhone 13 Pro Max")
    }
}
