//
//  NicknameView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 21/11/21.
//

import SwiftUI

struct NicknameView: View {
    
    @EnvironmentObject var userViewModel: UserViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var nickname: String = ""
    @State private var isNextButtonPressed: Bool = false
    @State private var opacity = 0.0
    let ego: Ego
    
    var body: some View {
        VStack {
            Spacer()
            EgoFaceImage(ego: ego)
            Spacer()
            
            VStack(alignment: .leading) {
                Text("EAII")
                    .personalityFont(.largeTitle, textSize: 40)
                    .foregroundColor(Color.branco)
                    .padding(.bottom, -40)
                
                Text("MERMÃO")
                    .personalityFont(.largeTitle, textSize: 40)
                    .foregroundColor(Color.branco)
                    .padding(.bottom, 2)
                
                Text("Como podemos te chamar?")
                    .personalityFont(.title, textSize: 21)
                    .padding(.bottom)
                    .foregroundColor(Color.branco)
                
                ZStack {
                    HStack {
                        Text(nickname == "" ? "Seu apelido" : "")
                            .foregroundColor(Color.branco)
                            .opacity(0.5)
                            .padding(.leading, 8)
                            .padding(10)
                        Spacer()
                    }
                    .frame(height: 40)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.cinzaClaro)
                        )
                    
                    TextField("", text: $nickname)
                        .padding(.leading, 8)
                        .padding(10)
                        .onChange(of: nickname) { newValue in
                            withAnimation {
                                if nickname == "" {
                                    opacity = 0
                                } else {
                                    opacity = 1
                                }
                            }
                        }
                }
            }
            .padding(.horizontal, 50)
            
            Spacer()
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        if nickname != "" {
                            isNextButtonPressed = true
                        }
                        userViewModel.updateUsername(newName: nickname.lowercased())
                    }) {
                        RightButtonStuff(title: "Let's go", systemImageName: "arrow.right", textColor: ego.getColorBackground())
                            .opacity(opacity)
                        NavigationLink("", destination: MainView(), isActive: $isNextButtonPressed)
                    }
                }
                .padding(.bottom)
                
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        LeftButtonStuff(title: "Voltar", systemImageName: "arrow.left")
                    }
                    Spacer()
                }
            }
            .padding(.horizontal, 50)
            .padding(.top, 40)
            
            Image("LogoEgo")
                .padding(40)
            
        }
        .background(ego.getColorBackground().edgesIgnoringSafeArea(.all))
        .navigationBarBackButtonHidden(true)
    }
}

struct NicknameView_Previews: PreviewProvider {
    static var previews: some View {
        NicknameView(ego: .diabinho)
            .preferredColorScheme(.light)
    }
}
