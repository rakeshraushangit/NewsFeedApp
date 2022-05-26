//// 	 
//	HeaderNewsFeedView.swift
//	NewsFeed
//
//	Created By Rakesh Raushan on 5/25/22
//

import SwiftUI

struct HeaderNewsFeedView: View {
    let newsFeed: NewsFeed
    var body: some View {
        ZStack {
            VStack {
                AsyncImage(url: URL(string: newsFeed.imageURL)) { image in
                    image
                        .resizable()
                        .scaleEffect()
                } placeholder: {
                    Color.clear
                }
                .frame(height: 150)
                VStack(alignment: .leading, spacing: 10) {
                    Text(newsFeed.description)
                        .foregroundColor(.green)
                        .font(.title3)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                    Divider()
                    HStack {
                        Text(newsFeed.date)
                            .foregroundColor(.gray)
                            .font(.caption2)
                            .fontWeight(.semibold)
                            .padding(.leading, 5)
                        Text(newsFeed.time)
                            .foregroundColor(.gray)
                            .font(.caption2)
                            .fontWeight(.regular)
                        Spacer()
                    }
                }
                .padding(10)
            }
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 2)
        }
    }
}

struct HeaderNewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderNewsFeedView(newsFeed: NewsFeed())
    }
}
