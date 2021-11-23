//
//  ChooseEgoView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 19/11/21.
//

import SwiftUI

enum Ego: CaseIterable, Identifiable {
    var id: Self { self }
    
    case florzinha
    case diabinho
    case estrelinha
    case coracaozinho
    
    func getImageName() -> String {
        switch self {
        case .florzinha:
            return "Florzinha"
        case .diabinho:
            return "Diabinho"
        case .estrelinha:
            return "Estrelinha"
        case .coracaozinho:
            return "Coracaozinho"
        }
    }
    
    func getColor() -> Color {
        switch self {
        case .florzinha:
            return .amarelo
        case .diabinho:
            return .azul
        case .estrelinha:
            return .roxo
        case .coracaozinho:
            return .verde
        }
    }
    
    func getColorBackground() -> Color {
        switch self {
        case .florzinha:
            return .verde
        case .diabinho:
            return .laranja
        case .estrelinha:
            return .amarelo
        case .coracaozinho:
            return .rosa
        }
    }
    
    func getImageFace() -> String {
        switch self {
        case .florzinha:
            return "RostoFlor"
        case .diabinho:
            return "RostoDiabinho"
        case .estrelinha:
            return "RostoEstrela"
        case .coracaozinho:
            return "RostoCoracao"
        }
    }
}

struct EgoCardView: View {
    var ego: Ego
    
    var body: some View {
        Image(ego.getImageName())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 270, height: 350, alignment: .bottom)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 240, height: 350, alignment: .center)
                        .overlay(
                            Image("TijoloPreto")
                        )
                        .cornerRadius(30)
                        .clipped()
                        .foregroundColor(ego.getColor())
                )
        }
}

struct EgoCard: Identifiable {
    var id = UUID()
    var imageName: String
    var backgroundColor: Color
}

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
                
                GeometryReader { proxy in
                    
                    let size = proxy.size
                    
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
