//
//  HomeModel.swift
//  FirebaseChatApp
//
//  Created by Cloutier, Vincent on 2020-10-20.
//

import SwiftUI
import Firebase

class HomeModel: ObservableObject{
    
    @Published var msgs : [MsgModel] = []
    @AppStorage("current_user") var user = ""
    
    func onAppear(){
        
        // Checking whether user is joined already....
        
        if user == ""{
            // Join Alert...
            
            UIApplication.shared.windows.first?.rootViewController?.present(alertView(), animated: true)
        }
    }
    
    func alertView()->UIAlertController{
        
        let alert = UIAlertController(title: "Join Chat !!!", message: "Enter Nick Name", preferredStyle: .alert)
        
        alert.addTextField { (txt) in
            txt.placeholder = "eg Kavsoft"
        }
        
        let join = UIAlertAction(title: "Join", style: .default) { (_) in
            
            // checking for empty click...
            
            let user = alert.textFields![0].text ?? ""
            
            if user != ""{
                
                self.user = user
                return
            }
            
            // repromiting alert view...
            
            UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
        }
        
        alert.addAction(join)
        
        return alert
    }
}
