//
//  UserRowView.swift
//  TwitterSwiftUI
//
//  Created by Jose Castillo on 11/5/22.
//

import SwiftUI

struct UserRowView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Perez")
                    .font(.subheadline).bold()
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                Text("Checo Perez")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
