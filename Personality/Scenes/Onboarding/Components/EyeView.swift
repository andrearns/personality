//
//  EyeView.swift
//  Personality
//
//  Created by André Arns on 25/11/21.
//

import SwiftUI

struct EyeView: View {
    
    @State private var isAnimating = false
    var firstAngle: Double = 0
    var isClockwise: Bool = true
    var speed: Double = 4.0
    private var lastAngle: Double {
        (360 * (isClockwise ? 1 : -1)) + firstAngle
    }
    
    private var foreverAnimation: Animation {
        Animation.linear(duration: speed)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        Image("Olho")
            .resizable()
            .scaledToFit()
            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.height/7, alignment: .center)
            .rotationEffect(Angle(degrees: isAnimating ? lastAngle : firstAngle))
            .animation(foreverAnimation, value: isAnimating)
            .onAppear {
                isAnimating = true
            }
    }
}

struct EyeView_Previews: PreviewProvider {
    static var previews: some View {
        EyeView()
    }
}
