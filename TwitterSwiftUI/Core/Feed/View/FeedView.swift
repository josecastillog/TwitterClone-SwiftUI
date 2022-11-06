//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by Jose Castillo on 11/4/22.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                    }
                }
            }
            
            ZStack {
                Circle()
                    .foregroundColor(Color(.systemBlue))
                    .frame(width: 60, height: 60)
                    .padding()
                
                Button {
                    showNewTweetView.toggle()
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 18, height: 18)
                        .padding()
                }
                .foregroundColor(.white)
                .fullScreenCover(isPresented: $showNewTweetView) {
                    NewTweetView()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
