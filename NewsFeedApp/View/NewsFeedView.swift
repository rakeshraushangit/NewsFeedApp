//// 	 
//	NewsFeedView.swift
//	NewsFeed
//
//	Created By Altametrics on 5/25/22
//	

import SwiftUI

struct NewsFeedView: View {
    let newsFeed: NewsFeed
    
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(newsFeed.description)
                        .foregroundColor(.green)
                        .font(.body)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .top] ,10)
                    HStack {
                        Text(newsFeed.date)
                            .foregroundColor(.gray)
                            .font(.caption2)
                            .fontWeight(.semibold)
                        Text(newsFeed.time)
                            .foregroundColor(.gray)
                            .font(.caption2)
                            .fontWeight(.regular)
                        Spacer()
                    }
                    .padding([.leading], 10)
                }
                AsyncImage(url: URL(string: newsFeed.imageURL)) { image in
                    image
                        .resizable()
                        .scaleEffect()
                } placeholder: {
                    Color.clear
                }
                .frame(width: 120)
            }
            .frame(height: 130)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 2)
        }
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView(newsFeed: NewsFeed())
    }
}
