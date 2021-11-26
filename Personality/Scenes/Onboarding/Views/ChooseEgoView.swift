//
//  ChooseEgoView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 19/11/21.
//

import SwiftUI

struct ChooseEgoView: View {
    
    @State var currentIndex: Int = 0
    @State var selectedEgo: Ego = .florzinha
    let egos: [Ego] = Ego.allCases
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            HStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("BORA \nCOMEÇAR")
                        .personalityFont(.largeTitle, textSize: 40)
                        .padding(.bottom, 2)
                    
                    Text("Escolha seu personagem")
                        .personalityFont(.title, textSize: 18)
                    
                }
                .padding(.bottom, 30)
                Spacer()
            }
            
            SnapCarousel(spacing: 0, index: $currentIndex, items: egos) { ego in
                GeometryReader { _ in
                    EgoCardView(ego: ego)
                }
            }
            .onChange(of: currentIndex) { value in
                selectedEgo = egos[value]
            }
            
            Spacer()
            
            NavigationLink(destination: {
                NicknameView(ego: selectedEgo)
            }) {
                RightButtonStuff(title: "Próximo", systemImageName: "arrow.right", textColor: Color.preto)
            }
            .padding(.vertical)
            .padding(.trailing)
            
            Spacer()
            Image("LogoEgo")
                .padding(20)
            Spacer()
        }
    }
}

struct ChooseEgoView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseEgoView()
            .preferredColorScheme(.dark)
    }
}
