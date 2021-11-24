//
//  LoginView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 19/11/21.
//

import SwiftUI
import AuthenticationServices

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
            
            SignInWithAppleButton(
                onRequest: { request in
                    request.requestedScopes = [.fullName, .email]
                },
                onCompletion: { result in
                    switch result {
                    case .success(let authResults):
                        print("Authorization successful")
                        guard let credentials = authResults.credential as? ASAuthorizationAppleIDCredential,
                              let identityToken = credentials.identityToken,
                              let identityTokenString = String(data: identityToken, encoding: .utf8),
                              let email = credentials.email
                        else { return }
                        
                        let givenName = credentials.fullName?.givenName

                        let body = [
                            "code": identityTokenString,
                            "name": givenName,
                            "email": email
                        ]
                        
                        guard let jsonData = try? JSONEncoder().encode(body) else { return }
                        
                        // Send jsonData to API
                    case .failure(let error):
                        print("Authorization failed: \(error.localizedDescription)")
                    }
                }
            )
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
