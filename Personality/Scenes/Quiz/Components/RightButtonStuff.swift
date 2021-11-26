//
//  RightButtonStuff.swift
//  Personality
//
//  Created by André Arns on 26/11/21.
//

import SwiftUI

struct RightButtonStuff: View {
    var title: String
    var systemImageName: String
    var textColor: Color
    
    var body: some View {
        HStack{
            Text(title.uppercased())
                .personalityFont(.largeTitle, textSize: 18)
                .padding(.trailing, 30)
            Image(systemName: systemImageName)
                .font(Font.title2.weight(.bold))
        }
        .foregroundColor(textColor)
        .padding(.horizontal, 28)
        .padding(.vertical, 16)
        .background(Color.branco)
        .clipShape(Capsule ())
        .padding(.bottom)
        .frame(minWidth: 300, maxWidth: .infinity, alignment: .trailing)
    }
}

struct RightButtonStuff_Previews: PreviewProvider {
    static var previews: some View {
        RightButtonStuff(title: "Próximo", systemImageName: "arrow.right", textColor: Color.laranja)
            .preferredColorScheme(.dark)
    }
}
