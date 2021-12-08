//
//  EgoEyeImage.swift
//  Personality
//
//  Created by Larissa Paschoalin on 08/12/21.
//

import SwiftUI

struct EgoEyeImage: View {
    var ego: Ego
    
    var body: some View {
        Image(ego.getEye())
            .resizable()
            .scaledToFill()
            .frame(width: 50)
    }
}

struct EgoEyeImage_Previews: PreviewProvider {
    static var previews: some View {
        EgoEyeImage(ego: .diabinho)
    }
}
