//
//  TweetRowView.swift
//  TwitterSwiftUI
//
//  Created by Jose Castillo on 11/4/22.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Jose Castillo")
                            .font(.subheadline).bold()
                        Text("@josecas0")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Text("Hello everyone, this is a place holder for my tweets.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            // Buttons
            HStack {
                Button {
                    // action ...
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // action ...
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // action ...
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // action ...
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
        .padding(.horizontal)
        .padding(.top, 6.0)
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
