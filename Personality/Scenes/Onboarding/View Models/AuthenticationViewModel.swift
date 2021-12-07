//
//  AuthenticationViewModel.swift
//  Personality
//
//  Created by Thiago Medeiros on 06/12/21.
//

import Foundation
import Combine
import AuthenticationServices

class AuthenticationViewModel: ObservableObject {
    @Published var showErrorAlert: Bool = false
    @Published var errorTitle: String = "Error"
    @Published var errorMessage: String = ""
    
    private var authService: AuthServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(authService: AuthServiceProtocol = AuthService()) {
        self.authService = authService
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(getAuthorizationState),
            name: ASAuthorizationAppleIDProvider.credentialRevokedNotification,
            object: nil
        )
    }
    
    func finishAuthentication(using result: Result<ASAuthorization, Error>) {
        switch result {
        case .success(let authorization):
            guard let credentials = authorization.credential as? ASAuthorizationAppleIDCredential else {
                showErrorAlert = true
                errorTitle = "Error"
                errorMessage = "It was not possible to authenticate. Please try again later."
                return
            }
            
            let email = credentials.email
            let name = credentials.fullName?.givenName
            let apple_id = credentials.user
            
            authService.generateToken(name: name, email: email, apple_id: apple_id)
                .receive(on: DispatchQueue.main)
                .sink { completion in
                    switch completion {
                    case .failure(let error):
                        print(error)
                    case .finished: break
                    }
                } receiveValue: { [weak self] auth in
                    print(auth)
                    self?.authService.saveUserData(user: auth.user, token: auth.token)
                }
                .store(in: &cancellables)
            
            // Send jsonData to API
        case .failure(let error):
            showErrorAlert = true
            errorTitle = "Error"
            errorMessage = error.localizedDescription
            print("Authorization failed: \(error.localizedDescription)")
        }
    }
    
    @objc func getAuthorizationState() {
        let provider = ASAuthorizationAppleIDProvider()
        if let user = UserDefaults.standard.value(forKey: "user") as? User {
            provider.getCredentialState(forUserID: user.apple_id) { [self] (state, error) in
                switch state {
                case .authorized:
                    // Credential are still valid
                    break
                case .revoked:
                    //Credential is revoked. It is similar to Logout. Show login screen.
                    authService.deleteUserData()
                    break
                case .notFound:
                    //Credential was not found. Show login screen.
                    authService.deleteUserData()
                    break
                case .transferred:
                    //The app is transfeered from one development team to another development team. You need to login again so show login screen.
                    authService.deleteUserData()
                    break
                default:
                    break
                }
            }
        }
    }
}
