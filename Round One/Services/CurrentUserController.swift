//
//  CurrentUser.swift
//  Round One
//
//  Created by Radek Jeník on 2/4/25.
//

class CurrentUserController {
    //will be updated to DB Model of User
    private var username: String
    
    func setUsername(_ username: String) {
        self.username = username
    }
    
    func getUsername() -> String {
        return username
    }
    
    init(username: String = "anonym") {
        self.username = username
    }
}
