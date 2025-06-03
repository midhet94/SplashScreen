//
//  ExpandingDotView.swift
//  SplashScreen
//
//  Created by Midhet Sulemani on 24/05/25.
//

import SwiftUI

struct ExpandingDotView: View {
    @Namespace private var animation
    @Binding var isExpanded: Bool
    
    var body: some View {
        Circle()
            .fill(
                LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), startPoint: .zero, endPoint: .bottom)
            )
            .scaleEffect(isExpanded ? 200 : 1)
            .animation(.easeInOut(duration: 1.5), value: isExpanded)
            .frame(width: 10, height: 10)
            .ignoresSafeArea()
    }
}

#Preview {
    ExpandingDotView(isExpanded: .constant(true))
}
