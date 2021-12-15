//
//  LoginView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 19/11/21.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
    @ObservedObject var authViewModel: AuthenticationViewModel = AuthenticationViewModel()
    
    @State var isActive: Bool = false
    
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
        NavigationView {
            VStack {
                LazyVGrid(columns: columns, alignment: .center, spacing: 20){
                    ForEach(eyesView.indices) { i in
                        eyesView[i]
                    }
                }

                
                Spacer()
                
                SignInWithAppleButton(
                    onRequest: { request in
                        request.requestedScopes = [.fullName, .email]
                    },
                    onCompletion: { authResult in
                        authViewModel.finishAuthentication(using: authResult)
                        isActive = true
                    }
                )
                .frame(width: 280, height: 60, alignment: .center)
                .cornerRadius(60)
                
                NavigationLink("", destination: ChooseEgoView(), isActive: $isActive)
                
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
            .navigationBarHidden(true)
            .navigationTitle("")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
