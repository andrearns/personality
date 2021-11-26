//
//  EgoFaceImage.swift
//  Personality
//
//  Created by André Arns on 26/11/21.
//

import SwiftUI

struct EgoFaceImage: View {
    var ego: Ego
    
    var body: some View {
        Image(ego.getImageFace())
            .resizable()
            .scaledToFit()
            .frame(width: 130)
    }
}

struct EgoFaceImage_Previews: PreviewProvider {
    static var previews: some View {
        EgoFaceImage(ego: .diabinho)
    }
}
