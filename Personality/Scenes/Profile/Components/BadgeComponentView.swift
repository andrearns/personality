//
//  BadgeComponentView.swift
//  Personality
//
//  Created by André Arns on 25/11/21.
//

import SwiftUI

struct BadgeComponentView: View {
    var result: QuizResult
    
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.azul)
                    .frame(width: 160, height: 160, alignment: .center)
                    .padding(20)
                    .padding(.top, 10)
                
                if let image_url = result.badge?.image_url, let url = URL(string: image_url) {
                    
                    CachedAsyncImage(url: url) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .padding(25)
                    .frame(width: 170, height: 170, alignment: .center)
                    .padding(.top, 30)
                }
            
                StarView(sideWidth: 52.0)
                    .padding(.leading, 130)
                    .padding(.bottom, 130)
            }
            Spacer()
        }
    }
}

struct BadgeComponentView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeComponentView(result: QuizBank.shared.quizList[1].results![0])
    }
}
