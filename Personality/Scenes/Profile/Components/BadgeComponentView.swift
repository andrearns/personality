//
//  BadgeComponentView.swift
//  Personality
//
//  Created by André Arns on 25/11/21.
//

import SwiftUI

struct BadgeComponentView: View {
    var result: Result
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.azul)
                .frame(width: 160, height: 160, alignment: .center)
                .padding(20)
                .padding(.top, 10)
                
            Image(result.badge!.iconImageURL)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(25)
            .frame(width: 170, height: 170, alignment: .center)
            .padding(.top, 30)
        
            StarView(sideWidth: 52.0)
                .padding(.leading, 130)
                .padding(.bottom, 130)
                
//            StarView(sideWidth: 32.0)
//                .padding(.leading, 160)
//                .padding(.bottom, 65)
//
//            StarView(sideWidth: 52.0)
//                .padding(.top, 165)
        }
    }
}

struct BadgeComponentView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeComponentView(result: QuizBank.shared.quizList[1].results[0])
    }
}
