//// 	 
//	HomeView.swift
//	NewsFeed
//
//	Created By Rakesh Raushan on 5/25/22
//	

import SwiftUI

struct HomeView: View {
    
    @State var item: Item = Item()
    
    var body: some View {
        NavigationView {
            FNList {
                ForEach(0..<item.newsFeeds.count, id: \.self) { index in
                    if index == 0 {
                        HeaderNewsFeedView(newsFeed: item.newsFeeds[index])
                    }else{
                        NewsFeedView(newsFeed: item.newsFeeds[index])
                    }
                }
            }
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Text("Geeks For Geeks")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.green)
                }
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                Task {
                    item = await HTTPRequest.shared.doRequestForNewsFeed()
                }
            }
        }
        .navigationViewStyle(.stack)
        .background(Color(UIColor.systemGroupedBackground))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
