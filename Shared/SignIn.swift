//
//  SignIn.swift
//  Templum
//
//  Created by federico mazzini on 16/6/22.
//

import SwiftUI

struct SignIn: View {
    var body: some View {
        VStack() {
            Spacer().frame(height: 44)
            TemplumTextField(value: .constant("Email"))
            Spacer().frame(height: 12)
            TemplumTextField(value: .constant("Password"))
            HStack {
                Spacer()
                TemplumTappableLabel(onTapped: {}, text: "I don't remember my password!")
            }
            
            Spacer().frame(height: 44)
            
            TemplumButton(onTapped: {}, title: "Take Me In")
            Spacer().frame(height: 12)
            TemplumTappableLabel(onTapped: {}, text: "Are you new? Create your account to start this one way journey!")
            
            Spacer()
        }
        .frame(maxHeight: .infinity)
        .padding(18)
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
            .previewDevice("iPhone 13 Pro Max")
    }
}
