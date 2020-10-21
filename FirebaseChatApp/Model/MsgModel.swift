//
//  MsgModel.swift
//  FirebaseChatApp
//
//  Created by Cloutier, Vincent on 2020-10-20.
//

import SwiftUI
import FirebaseFirestoreSwift
// For OnChange
struct MsgModel: Codable,Identifiable,Hashable {
    
    @DocumentID var id: String?
    var msg : String
    var user : String
    var timeStamp : Date
    
    enum CodingKeys: String,CodingKey {
            case id
            case msg
            case user
            case timeStamp
        }

}
