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
            ScrollView{
                ForEach(homeData.msgs){msg in
                    
                }
            }
        }
        .onAppear(perform: {
        
            homeData.onAppear()
        })
    }
}

