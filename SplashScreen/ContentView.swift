//
//  ContentView.swift
//  SplashScreen
//
//  Created by Midhet Sulemani on 24/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showDotAnimation: Bool = false
    
    var body: some View {
        HStack {
            TypingTextView(fullText: "Hello World",
                           typingCompleted: $showDotAnimation)
            
            ExpandingDotView(isExpanded: $showDotAnimation)
        }
    }
}

#Preview {
    ContentView()
}
