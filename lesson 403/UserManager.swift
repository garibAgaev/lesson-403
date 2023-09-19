//
//  UserManager.swift
//  lesson 403
//
//  Created by Garib Agaev on 18.09.2023.
//

import Foundation
class UserManager: ObservableObject {
    @Published var isRegister = StorageManager.shared.isRegister
    
    var name: String? {
        get {
            StorageManager.shared.name
        }
        set {
            if newValue != nil {
                isRegister = true
                StorageManager.shared.name = newValue
            } else {
                isRegister = false
                StorageManager.shared.deleteName()
            }
        }
    }
}
