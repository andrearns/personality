//
//  ModalView.swift
//  Personality
//
//  Created by Raquel Zocoler on 23/11/21.
//

import SwiftUI

struct ModalView: View {

    var result : Result

    @State var value: Bool = false
    @State var aboutArray : [String] = [""]
    
    
    var body: some View{
    VStack{
        //Barrinha branca
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(width: 134, height: 5, alignment: .center)
        .padding(.top, 20)
        
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.azul)
                .frame(width: 160, height: 160, alignment: .center)
                .padding(20)
                .padding(.top, 10)
                
            Image(result.badge!.imageURL)
            .resizable()
            .frame(width: 170, height: 170, alignment: .center)
            .padding(20)
            .padding(.top, 30)
        
        Image("Estrelinhas")
            .padding(.trailing, 160)
            .padding(.bottom, 130)
            
        Image("Estrelinhas")
            .resizable()
            .frame(width: 32.0, height: 32.0)
            .padding(.leading, 160)
            .padding(.bottom, 65)
            
        Image("Estrelinhas")
            .resizable()
            .frame(width: 52.0, height: 52.0)
            .padding(.top, 165)
        }
        
        
        Text(result.label)
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(.white)
        
//        Text(result.about)
//            .font(.body)
//            .padding(.horizontal, 20)
//            .padding(.top)
//            .foregroundColor(.white)
//            .multilineTextAlignment(.center)
        
//        Divider()
        
        ForEach(aboutArray, id: \.self){ section in
            Text(section)
                .font(.body)
                .padding(.horizontal, 20)
                .padding(.top, 10)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
//            Divider()
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
                self.aboutArray = result.about.components(separatedBy: "\n")
            }
        
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(result: Result(label: "Dominância", about: "Ousado, Questionador & Autosuficiente. \n Quem tem alto perfil de dominância, tende a tomar decisões mais rapidamente, é motivado por assumir riscos, busca objetivos com senso de urgência e prefere fazer as coisas da sua maneira. \n Seu lema é Fazer Rápido. \n Tome cuidado para não se precipitar e buscar o caminho mais fácil. Além disso, fique atento para manter o bom relacionamento com o seu time.", code: "", badge: Badge(imageURL: "BadgeTeste", label: ""), colorName: ""))
    }
}
    
