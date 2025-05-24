//
//  TypingTextView.swift
//  SplashScreen
//
//  Created by Midhet Sulemani on 24/05/25.
//

import SwiftUI

struct TypingTextView: View {
    let fullText: String
    let typingSpeed: TimeInterval = 0.5
    
    @State var displayedText = String()
    @Binding var typingCompleted: Bool

    var body: some View {
        Text(displayedText)
            .font(.title)
            .onAppear(perform: typingAnimation)
    }
    
    func typingAnimation() {
        var currentIndex = 0

        Timer.scheduledTimer(withTimeInterval: typingSpeed, repeats: true) { timer in
            if currentIndex < fullText.count {
                let index = fullText.index(fullText.startIndex, offsetBy: currentIndex)
                displayedText.append(fullText[index])
                currentIndex += 1
            } else {
                timer.invalidate()
                typingCompleted = true
            }
        }
    }
}

#Preview {
    TypingTextView(fullText: "Midhet",
                   typingCompleted: .constant(false))
}
