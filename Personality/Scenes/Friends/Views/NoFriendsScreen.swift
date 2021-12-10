//
//  NoFriendsScreen.swift
//  Personality
//
//  Created by Raquel Zocoler on 10/12/21.
//

import SwiftUI

struct NoFriendsScreen: View {
    @State private var searchFriend: String = ""
    var body: some View {
        VStack{
        Text("Explore as compatibilidades!")
            .personalityFont(.largeTitle, textSize: 20)
            .padding(.bottom, -10)
        
        ZStack {
            HStack {
                
                Image(systemName: "magnifyingglass")
                
                Text(searchFriend == "" ? "Encontre seus amigos" : "")
                    .foregroundColor(Color.branco)
                    .opacity(0.5)
                    
                Spacer()
                
                Image(systemName: "mic.fill")
            }
            .padding(.leading, 8)
            .padding(10)
            .frame(height: 40)
            .background(
                RoundedRectangle(cornerRadius: 10)
                .fill(Color.cinzaClaro)
                )
            
            TextField("", text: $searchFriend)
                .padding(.leading, 8)
                .padding(10)
        }.padding()
        
            Spacer()
            
            HStack{
            Image(systemName: "person.fill.badge.plus")
                    .personalityFont(.subtitle, textSize: 16)
                    .foregroundColor(.azul)
            Text("Convidar amiguxo")
                .personalityFont(.subtitle, textSize: 14)
                .foregroundColor(.azul)
            } .padding(.leading, 190)
            ZStack{
                Image("seta")
                    .resizable()
                    .frame(width: 200, height: 260, alignment: .center)
                    .padding(.bottom, 365)
                    .padding(.leading, 90)
                
            Text("Você ainda \nnão adicionou \namigos")
                .personalityFont(.largeTitle, textSize: 30)
                .multilineTextAlignment(.center)
                .padding()
                
            Image("circle")
            .resizable()
            .frame(width: 107, height: 35, alignment: .center)
            .padding(.bottom, 75)
            .padding(.leading, 75)
            
            Text("Encontre um amiguxo aí")
                .personalityFont(.subheadline, textSize: 15)
                .padding(.top, 160)
            Image("line")
                .resizable()
                .frame(width: 167, height: 8, alignment: .center)
                .padding(.top, 20)
                .padding(.top, 160)
            }
            
            Spacer()
               
                
    }  
    } 
    
    
}

struct NoFriendsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NoFriendsScreen()
            .preferredColorScheme(.dark)
    }
}
