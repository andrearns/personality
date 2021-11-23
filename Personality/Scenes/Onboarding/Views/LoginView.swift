//
//  LoginView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 19/11/21.
//

import SwiftUI
import AuthenticationServices

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


struct LoginView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    private let eyesView: [EyeView] = [
        EyeView(speed: 3.0),
        EyeView(firstAngle: -40),
        EyeView(firstAngle: 20, isClockwise: false),
        EyeView(firstAngle: 60),
        EyeView(isClockwise: false),
        EyeView(firstAngle: -20, speed: 3.0),
        EyeView(isClockwise: false, speed: 2.5),
        EyeView(firstAngle: 30),
        EyeView(firstAngle: 20, isClockwise: false),
        EyeView(firstAngle: 60),
        EyeView(firstAngle: -40, isClockwise: false, speed: 2.5),
        EyeView(firstAngle: 90)
    ]
    
    var body: some View {
        
        VStack {
            LazyVGrid(columns: columns, alignment: .center, spacing: 20){
                ForEach(eyesView.indices) { i in
                    eyesView[i]
                }
            }

            
            Spacer()
            
            SignInWithAppleButton(onRequest: {_ in }, onCompletion: {_ in })
                .frame(width: 280, height: 60, alignment: .center)
                .cornerRadius(60)
            
            
            Text("Ao continuar, você confirma que concorda com nossos Termos e Condições e nossa Política de Privacidade")
                .font(.caption)
                .bold()
                .foregroundColor(.branco)
                .padding(.leading, 30)
                .padding(.trailing, 30)
            
            Spacer()
        }
        .background(
            Image("FundoLogin")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
