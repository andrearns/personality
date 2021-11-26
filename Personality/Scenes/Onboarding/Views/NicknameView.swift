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
    @State var isNextButtonPressed: Bool = false
    let ego: Ego
    
    var body: some View {
        VStack {
            Spacer()
            EgoFaceImage(ego: ego)
            Spacer()
            
            VStack(alignment: .leading) {
                Text("EAE MERMÃO")
                    .personalityFont(.largeTitle, textSize: 40)
                    .foregroundColor(Color.branco)
                
                Text("Como podemos te chamar?")
                    .personalityFont(.title, textSize: 21)
                    .padding(.bottom)
                    .foregroundColor(Color.branco)
                
                TextField("", text: $nickname)
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.cinzaClaro)
                        )
            }
            .padding(.horizontal, 50)
            
            Spacer()
            
            VStack {
                Button(action: {
                    isNextButtonPressed = true
                    userViewModel.updateUsername(newName: nickname.lowercased())
                }) {
                    RightButtonStuff(title: "Let's go", systemImageName: "arrow.right", textColor: ego.getColorBackground())
                    NavigationLink("", destination: MainView(), isActive: $isNextButtonPressed)
                }
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    LeftButtonStuff(title: "Voltar", systemImageName: "arrow.left")
                }
            }
            .padding(.horizontal, 50)
            
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
