//
//  CheckLoginStateView.swift
//  Personality
//
//  Created by Thiago Medeiros on 15/12/21.
//

import SwiftUI

struct CheckLoginStateView: View {
    @AppStorage("token") var token: String = ""
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        if token.isEmpty {
            LoginView()
        } else {
            MainView()
                .onAppear {
                    userViewModel.onAppear()
                }
        }
    }
}

struct CheckLoginStateView_Previews: PreviewProvider {
    static var previews: some View {
        CheckLoginStateView()
    }
}
