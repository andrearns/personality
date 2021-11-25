//
//  ModalView.swift
//  Personality
//
//  Created by Raquel Zocoler on 23/11/21.
//

import SwiftUI

struct ModalView: View {

    @Binding var result: Result?

    @State var value: Bool = false
    @State var aboutArray : [String] = [""]
    
    
    var body: some View{
    VStack{
        //Barrinha branca
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(width: 134, height: 5, alignment: .center)
        .padding(.top, 20)
        
        BadgeComponentView(result: result!)
        
        Text(result!.label)
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(.white)
        
        ForEach(aboutArray, id: \.self){ section in
            Text(section)
                .font(.body)
                .padding(.horizontal, 20)
                .padding(.top, 10)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }

        Spacer()
        
        ZStack{
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.cinzaClaro)
            .frame(width: 355, height: 57, alignment: .center)
            
        Toggle(isOn: $value){
               Text("Ocultar do perfil")
                .foregroundColor(Color.white)
                .bold()
            }.padding(40)
        }
    } .background(Color.black)
            .onAppear {
                self.aboutArray = result!.about.components(separatedBy: "\n")
            }
        
    }
}
    
