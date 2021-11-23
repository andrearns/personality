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
            
            Image(ego.getImageFace())
                .resizable()
                .scaledToFit()
                .frame(width: 130)
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("INHAI MERMÃO")
                    .font(.largeTitle)
                    .bold()
                
                Text("Como podemos te chamar?")
            }
            TextField("Nickname", text: $nickname)
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.cinzaClaro)
                    )
                .padding(.leading, 62)
                .padding(.trailing, 62)
            
            Spacer()
            
            Button(action: {
                print("apertou no botao")
            }) {
                HStack {
                    Text("LET'S GO!")
                        .bold()
                        .padding(30)
                    
                    Spacer()
                    
                    Image(systemName: "arrow.right")
                        .padding(30)
                        
                        
                }
                .foregroundColor(ego.getColorBackground())
                .frame(width: 250, height: 60, alignment: .center)
                .font(.system(size: 20))
                .background(
                    RoundedRectangle(cornerRadius: 60)
                        .fill(Color("Branco"))
                )
            }
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            
            Button(action: {
                print("apertou no botao")
            }) {
                HStack {
                    Image(systemName: "arrow.left")
                        .padding(30)
                    
                                
                    Spacer()
                                
                    Text("VOLTAR")
                        .bold()
                        .padding(30)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 60, alignment: .center)
                    .font(.system(size: 20))
                    .overlay(
                        RoundedRectangle(cornerRadius: 60)
                            .stroke(.white, lineWidth: 2)
                        )
                    }
            .padding(.leading)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            
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
