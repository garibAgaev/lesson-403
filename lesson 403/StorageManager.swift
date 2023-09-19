//
//  StorageManager.swift
//  lesson 403
//
//  Created by Garib Agaev on 19.09.2023.
//

import Foundation

class StorageManager {
    static let shared = StorageManager ()
    
    private let defaults = UserDefaults()
    private let userKey = "userKey"
    
    var isRegister: Bool {
        defaults.string(forKey: userKey) != nil
    }
    
    var name: String? {
        get {
            defaults.string(forKey: userKey)
        }
        set {
            defaults.setValue(newValue, forKey: userKey)
        }
    }
    
    func deleteName() {
        defaults.removeObject(forKey: userKey)
    }
    
    private init() {}
}
