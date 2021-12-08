//
//  FriendVerticalCard.swift
//  Personality
//
//  Created by Larissa Paschoalin on 08/12/21.
//

import SwiftUI

struct FriendVerticalCard: View {
    let ego: Ego
    
    var body: some View {
        VStack {
            EgoFaceImage(ego: ego)
                .padding()
                .frame(width: 100, height: 100, alignment: .center)
                .background(ego.getColorBackground())
                .cornerRadius(12)
            
            Text("Nickname")
                .personalityFont(.largeTitle, textSize: 20)
                .foregroundColor(.azul)
        }
        .padding()
        .background(Color.cinzaClaro)
        .cornerRadius(12)
    }
}

struct FriendVerticalCard_Previews: PreviewProvider {
    static var previews: some View {
        FriendVerticalCard(ego: .diabinho)
    }
}
