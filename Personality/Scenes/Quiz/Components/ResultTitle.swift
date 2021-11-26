//
//  ResultTitle.swift
//  Personality
//
//  Created by André Arns on 26/11/21.
//

import SwiftUI

struct ResultTitle: View {
    var label: String
    
    var body: some View {
        Text(label)
            .personalityFont(.largeTitle)
            .multilineTextAlignment(.center)
            .foregroundColor(.branco)
            .padding(.bottom)
    }
}

struct ResultTitle_Previews: PreviewProvider {
    static var previews: some View {
        ResultTitle(label: "Dominância")
            .preferredColorScheme(.dark)
    }
}
