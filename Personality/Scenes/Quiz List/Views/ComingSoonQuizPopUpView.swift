//
//  ComingSoonQuizPopUpView.swift
//  Personality
//
//  Created by André Arns on 24/11/21.
//

import SwiftUI

struct ComingSoonQuizPopUpView: View {
    
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            if show {
                // Pop up background color
                Color.black.opacity(show ? 0.7 : 0).edgesIgnoringSafeArea(.all)
                
                // Pop up window
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            // Dismiss pop up
                            withAnimation(.linear(duration: 0.3)) {
                                show = false
                            }
                        }) {
                            Image(systemName: "xmark")
                                .resizable()
                                .foregroundColor(Color.branco)
                                .frame(width: 20, height: 20, alignment: .center)
                        }
                    }
                    Spacer()
                    Image("heartComingSoon")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .aspectRatio(contentMode: .fit)
                    Text("trabalhando para deixar esse quizzo perfeito para você")
                        .personalityFont(.largeTitle, textSize: 30)
                        .padding()
                    Text("Fica ligado que em breve vem aí")
                        .personalityFont(.subheadline, textSize: 16)
                    Image("crookedLine")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, -6)
                        .frame(width: 200)
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity, minHeight: 360, maxHeight: 420)
                .background(Color.cinzaClaro)
                .cornerRadius(16)
                .padding()
            }
        }
    }
}

//struct ComingSoonQuizPopUpView_Previews: PreviewProvider {
//    static var previews: some View {
//        ComingSoonQuizPopUpView()
//            .preferredColorScheme(.dark)
//    }
//}
