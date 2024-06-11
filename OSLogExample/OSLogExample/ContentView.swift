//
//  ContentView.swift
//  OSLogExample
//
//  Created by 김건우 on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onAppear {
            Log.debug("Hello, Debug Log!", category: .network)
            Log.info("Hello, Info Log!", category: .storage)
            Log.warning("Hello, Warning Log!", category: .reactor)
            Log.error("Hello, Error Log!", category: .custom(category: "Custom"))
            Log.critical("Hello, Critical Log!", category: .view)
        }
    }
}

#Preview {
    ContentView()
}
