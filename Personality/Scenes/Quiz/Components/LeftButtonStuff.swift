//
//  LeftButtonStuff.swift
//  Personality
//
//  Created by André Arns on 26/11/21.
//

import SwiftUI

struct LeftButtonStuff: View {
    var title: String
    var systemImageName: String
    
    var body: some View {
        HStack{
            Image(systemName: systemImageName)
                .font(Font.title2.weight(.bold))
            Text(title.uppercased())
                .personalityFont(.largeTitle, textSize: 18)
                .padding(.leading, 50)
        }
        .foregroundColor(Color.branco)
        .padding(.horizontal, 28)
        .padding(.vertical, 16)
        .overlay(Capsule().stroke(Color.branco,lineWidth: 2))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct LeftButtonStuff_Previews: PreviewProvider {
    static var previews: some View {
        LeftButtonStuff(title: "Quizzos", systemImageName: "arrow.left")
            .preferredColorScheme(.dark)
    }
}
