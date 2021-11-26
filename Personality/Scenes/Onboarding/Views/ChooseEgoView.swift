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
            
            VStack(alignment: .leading) {
                Text("BORA COMEÇAR")
                    .font(.largeTitle)
                
                Text("Escolha seu EGOzinho")
                    .font(.title2)
                
            }.padding(50)
            .padding(.bottom, -30)
            
            SnapCarousel(spacing: 0, index: $currentIndex, items: egos) { ego in
                
                GeometryReader { _ in
                    EgoCardView(ego: ego)
                }
                
            }
            .onChange(of: currentIndex) { value in
                selectedEgo = egos[value]
            }
            
            Spacer()
            
            HStack {
                
                NavigationLink(destination: {
                    NicknameView(ego: selectedEgo)
                }) {
                    HStack {
                        Text("PRÓXIMO")
                            .bold()
                            .foregroundColor(.black)
                            .padding(30)
                        
                        Spacer()
                        
                        Image(systemName: "arrow.right")
                            .padding(30)
                            .foregroundColor(.black)
                            
                    }
                    .frame(width: 250, height: 60, alignment: .center)
                    .font(.system(size: 20))
                    .background(
                        RoundedRectangle(cornerRadius: 60)
                            .fill(Color("Branco"))
                    )
                }
                .padding()
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            
            Image("LogoEgo")
                .padding(40)
        }
    }
}

struct ChooseEgoView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseEgoView()
            .preferredColorScheme(.dark)
    }
}
