//
//  EgoCardView.swift
//  Personality
//
//  Created by André Arns on 25/11/21.
//

import SwiftUI

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

struct EgoCardView_Previews: PreviewProvider {
    static var previews: some View {
        EgoCardView(ego: .coracaozinho)
    }
}
