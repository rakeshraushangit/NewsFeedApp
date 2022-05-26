//// 	 
//	FNList.swift
//	NewsFeed
//
//	Created By Rakesh Raushan on 5/25/22
//

import SwiftUI

// Custom List View
struct FNList<Label> : View where Label : View {
    
    @ViewBuilder var label: Label
    
    init(@ViewBuilder label: () -> Label) {
        self.label = label()
    }
    
    var body: some View {
        List {
            label
                .listRowSeparator(.hidden)
                .listRowBackground(Color(UIColor.systemGroupedBackground))
        }
        .listStyle(PlainListStyle())
    }
}

