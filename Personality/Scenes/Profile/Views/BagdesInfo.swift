//
//  BagdesInfo.swift
//  Personality
//
//  Created by Raquel Zocoler on 20/11/21.
//

import SwiftUI

struct BagdesInfo: View {
    
    @State var showModal = false
    var body: some View {
        
        VStack{
         Button(action: {
            showModal = true
         },label: {Text("Abrir modal")
            .padding()
            .background(Color.azul)
            .foregroundColor(Color.rosa)
         })
            }
        .sheet(isPresented: $showModal){
        ModalView(result: Result(label: "Dominancia", about: "Quem tem alto perfil de dominância, tende a tomar decisões mais rapidamente, é motivado por assumir riscos, busca objetivos com senso de urgência e prefere fazer as coisas da sua maneira. \n Seu lema é ''fazer rápido'. Tome cuidado para não se precipitar e buscar o caminho mais fácil. \n Além disso, fique atento para manter o bom relacionamento com o seu time", code: "", badge: Badge(imageURL: "BadgeTeste", label: ""), colorName: ""))
            
            }
        }
    }



struct BagdesInfo_Previews: PreviewProvider {
    static var previews: some View {
        BagdesInfo()
    }
}



