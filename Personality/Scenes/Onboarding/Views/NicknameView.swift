//
//  NicknameView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 21/11/21.
//

import SwiftUI

struct NicknameView: View {
    let ego: Ego
    
    @State private var nickname: String = ""
    var body: some View {
        VStack {
            Spacer()
            EgoFaceImage(ego: ego)
            Spacer()
            
            VStack(alignment: .leading) {
                Text("EAE MERMÃO")
                    .personalityFont(.largeTitle, textSize: 40)
                
                Text("Como podemos te chamar?")
                    .personalityFont(.title, textSize: 21)
                    .padding(.bottom)
                
                TextField("Nickname", text: $nickname)
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
                    print("apertou no botao")
                }) {
                    RightButtonStuff(title: "Let's go", systemImageName: "arrow.right", textColor: ego.getColorBackground())
                }
                
                Button(action: {
                    print("apertou no botao")
                }) {
                    LeftButtonStuff(title: "Voltar", systemImageName: "arrow.left")
                }
            }
            .padding(.horizontal, 50)
            
            Image("LogoEgo")
                .padding(40)
            
        }
        .background(ego.getColorBackground().edgesIgnoringSafeArea(.all))
        
    }
}

struct NicknameView_Previews: PreviewProvider {
    static var previews: some View {
        NicknameView(ego: .diabinho)
            .preferredColorScheme(.dark)
    }
}
