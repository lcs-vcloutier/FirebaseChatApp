//
//  Home.swift
//  FirebaseChatApp
//
//  Created by Cloutier, Vincent on 2020-10-20.
//

import SwiftUI
struct Home: View {
    @AppStorage("current_user") var User = ""
    @StateObject var homeData = HomeModel()
    var body: some View {
        VStack{
            Text("Home\(User)")
        }
        .onAppear(perform: {
        
            homeData.onAppear()
        })
    }
}

