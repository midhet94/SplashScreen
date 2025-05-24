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
        ZStack {
            if isExpanded {
                Color.red
                    .matchedGeometryEffect(id: "dot", in: animation)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                            isExpanded = false
                        }
                    }
            } else {
                Circle()
                    .fill(Color.red)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: "dot", in: animation)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                            isExpanded = true
                        }
                    }
            }
        }
    }
}

#Preview {
    ExpandingDotView(isExpanded: .constant(true))
}
