//
//  ContentView.swift
//  lesson 403
//
//  Created by Garib Agaev on 18.09.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name ?? "")")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonTimerView(timer: timer)
            Spacer()
            ButtonLogOutView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

struct ButtonTimerView: View {
    @ObservedObject var timer: TimeCounter
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
    }
}

struct ButtonLogOutView: View {
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Button(action: deleteUser) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
    }
    
    private func deleteUser() {
        user.name = nil
    }
}
