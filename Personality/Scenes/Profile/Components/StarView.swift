//
//  StarView.swift
//  Personality
//
//  Created by André Arns on 25/11/21.
//

import SwiftUI

struct StarView: View {
    
    @State private var isAnimating = false
    var sideWidth: Double
    
    // Rotation
    var firstAngle: Double = 0
    var isClockwise: Bool = true
    var speed: Double = 4.0
    private var lastAngle: Double {
        (270 * (isClockwise ? 1 : -1)) + firstAngle
    }
    
    // Scaling
    @State var currentScale: CGFloat = 1.0
    
    private var foreverAnimation: Animation {
        Animation.linear(duration: speed)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        Image("Estrelinhas")
            .resizable()
            .scaleEffect(self.isAnimating ? 0.5 : 1)
            .animation(
                self.isAnimating ? Animation.easeInOut(duration: 1).repeatForever(autoreverses: true) : Animation.default, value: self.isAnimating ? 0.5 : 1)
            .frame(width: sideWidth, height: sideWidth)
            .rotationEffect(Angle(degrees: isAnimating ? lastAngle : firstAngle))
            .animation(foreverAnimation, value: isAnimating)
            .onAppear {
                isAnimating = true
            }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView(sideWidth: 40.0)
    }
}
