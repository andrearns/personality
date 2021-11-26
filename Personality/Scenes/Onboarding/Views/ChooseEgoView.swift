//
//  ChooseEgoView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 19/11/21.
//

import SwiftUI

struct ChooseEgoView: View {
    
    @EnvironmentObject var userViewModel : UserViewModel
    
    @State var currentIndex: Int = 0
    @State var selectedEgo: Ego = .florzinha
    @State var isNextButtonPressed: Bool = false
    let egos: [Ego] = Ego.allCases
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Spacer()
                
                HStack {
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("BORA \nCOMEÇAR")
                            .personalityFont(.largeTitle, textSize: 40)
                            .padding(.bottom, 2)
                            .foregroundColor(Color.branco)
                        
                        Text("Escolha seu personagem")
                            .personalityFont(.title, textSize: 18)
                            .foregroundColor(Color.branco)
                        
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
                
                Button(action: {
                    userViewModel.updateUserAvatar(ego: selectedEgo)
                    isNextButtonPressed = true
                }) {
                    RightButtonStuff(title: "Próximo", systemImageName: "arrow.right", textColor: Color.preto)
                    NavigationLink("", destination: NicknameView(ego: selectedEgo), isActive: $isNextButtonPressed)
                }
                .padding(.vertical)
                .padding(.trailing)
                
                Spacer()
                Image("LogoEgo")
                    .padding(20)
                Spacer()
            }
            .navigationBarHidden(true)
            .background(Color.preto.edgesIgnoringSafeArea(.all))
        }
    }
}

struct ChooseEgoView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseEgoView()
            .preferredColorScheme(.light)
    }
}
