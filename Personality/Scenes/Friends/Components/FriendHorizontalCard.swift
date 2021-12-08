//
//  FriendHorizontalView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 08/12/21.
//

import SwiftUI

struct FriendHorizontalCard: View {
    let ego: Ego
    
    var body: some View {
        HStack {
            EgoEyeImage(ego: ego)
                .padding()
                .frame(width: 70, height: 70, alignment: .center)
                .background(ego.getColorBackground())
                .cornerRadius(35)
            
            VStack(alignment: .leading) {
                Text("Nickname")
                    .personalityFont(.largeTitle, textSize: 25)
                    .foregroundColor(.azul)
                
                Text("Atualizado há 3 horas")
                    .foregroundColor(.branco)
            }
            .padding(.leading)
            Spacer()
        }
        .padding()
        .background(Color.cinzaClaro)
        .cornerRadius(20)
    }
}

struct FriendHorizontalCard_Previews: PreviewProvider {
    static var previews: some View {
        FriendHorizontalCard(ego: .diabinho)
    }
}
