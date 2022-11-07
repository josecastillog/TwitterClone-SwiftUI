//
//  CustomTextField.swift
//  TwitterSwiftUI
//
//  Created by Jose Castillo on 11/6/22.
//

import SwiftUI

struct CustomTextField: View {
    let imageName: String
    let placeHolderText: String
    @Binding var text: String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeHolderText, text: $text)
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(imageName: "envelope", placeHolderText: "Email", text: .constant(""))
    }
}
