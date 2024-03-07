//
//  ContentView.swift
//  LongPressGestureSwiftUI
//
//  Created by Sandra Gomez on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var flag = true
    var body: some View {
        VStack {
            Text(message)
            Image(systemName: "star.fill")
                .font(.system(size: 200))
                .foregroundColor(flag ? .green : .red)
                .gesture(
                    LongPressGesture()
                    .onEnded({ _ in flag.toggle()
                        if flag {
                            message = "Green star"
                        } else {
                            message = "red star"
                            }
                        })
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
