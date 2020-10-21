//
//  Home.swift
//  FirebaseChatApp
//
//  Created by Cloutier, Vincent on 2020-10-20.
//

import SwiftUI
struct Home: View {
    @StateObject var homeData = HomeModel()
    var body: some View {
        VStack{
            Text("Home")
        }
        .onAppear(perform: {
        
            homeData.onAppear()
        })
    }
}

