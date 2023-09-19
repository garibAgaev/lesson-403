//
//  RegisterView.swift
//  lesson 403
//
//  Created by Garib Agaev on 18.09.2023.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                Text(name.count.formatted())
                    .padding(.leading, 20)
                    .hidden()
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text(name.count.formatted())
                    .padding(.trailing, 20)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }.opacity(name.count >= 3 ? 1 : 0.5)
            }
        }
    }
    
    private func registerUser() {
        guard name.count >= 3 else { return }
        user.name = name
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
