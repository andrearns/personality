//
//  buildimagem.swift
//  Personality
//
//  Created by Bruna Oliveira on 22/11/21.
//

import Foundation
import SwiftUI
struct Buildimage: View {
    
    var result: Result
    
    var body: some View {
        ZStack {
            Image("bg")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .frame(width: 200, height: 250, alignment:.center)
          
            Image(result.badge!.iconImageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .frame(width: 180, height: 180, alignment:.center)
        }
        .frame(width: 300, height: 180, alignment: .center)
    }
}
struct Buildimage_preview: PreviewProvider {
    static var previews: some View {
        Buildimage(result:
            Result(
                label: "dominancia",
                about: "textozin",
                code: "",
                badge:
                    Badge(
                        iconImageURL: "chapeu2",
                        profileImagesURL: [
                            .coracaozinho : "X",
                            .diabinho : "Y",
                            .estrelinha : "W",
                            .florzinha : "Z"
                        ]
                    ),
                colorName: ""
            )
        )
    }
}
//ZStack{
//    Image("bg")
//        .resizable()
//        .aspectRatio(contentMode: .fit)
//        .padding()
//        .frame(width: 290, height: 250, alignment:.trailing)
//
//    Image(result.badge?.imageURL!)
//        .resizable()
//        .aspectRatio(contentMode: .fit)
//        .padding(.trailing, -20)
//        .frame(width: 120, height: 150, alignment:.center)
//}
//        .frame(width: 330, height: 200, alignment: .center)
//
//}
