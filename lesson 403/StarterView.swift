//
//  StarterView.swift
//  lesson 403
//
//  Created by Garib Agaev on 18.09.2023.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        if aaa() {
            ContentView()
        } else {
            RegisterView()
        }
    }
    
    func aaa() -> Bool {
        return user.isRegister
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
