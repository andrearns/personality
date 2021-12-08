//
//  FriendsView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 08/12/21.
//

import SwiftUI

struct FriendsView: View {
    @State private var searchFriend: String = ""
    let ego: Ego
    
    var body: some View {
        VStack {
            
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
            }
            .padding()
            
            // ScrollView que tiramos
//            HStack {
//                Text("Últimas atualizações")
//
//                Spacer()
//
//                Button(action: {}) {
//                    Text("\(Image(systemName: "person.fill.badge.plus")) Convidar amigo")
//                }
//            }
//            .padding(.leading)
//            .padding(.trailing)
//
//            ScrollView(.horizontal) {
//                HStack {
//                    ForEach(Ego.allCases) { i in
//                        FriendVerticalCard(ego: i)
//                    }
//                }
//            }
//            .padding(.leading)

            
            HStack{
                VStack(alignment: .leading){
                    Image(systemName: "person.fill.badge.plus")
                        .personalityFont(.largeTitle, textSize: 50)
                    
                    Text("Convidar")
                        .personalityFont(.largeTitle, textSize: 28)
                        .padding(.bottom, -20)
                    
                    Text("amigo")
                        .personalityFont(.largeTitle, textSize: 28)
                }
                .padding(.trailing)
                
                Image("ConvidarAmigo")
                    .resizable()
                    .scaledToFit()
                    .padding(-20)
                

            }
            .padding(.leading, 30)
            .background(
                Image("FundoLogin")
                    .resizable()
                    .scaledToFill()
            )
            .cornerRadius(20)
            .padding(.leading)
            .padding(.trailing)

            HStack {
                Text("Mais que amigos, friends")
                
                Spacer()
            }
            .padding()
            .padding(.top, -10)
            .padding(.bottom, -10)

            
            ScrollView() {
                VStack {
                    ForEach(Ego.allCases) { i in
                        FriendHorizontalCard(ego: i)
                            .padding(.bottom, 5)
                    }
                }
            }
            .padding(.leading)
            .padding(.trailing)
            
        }
        
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView(ego: .diabinho)
            .preferredColorScheme(.dark)
    }
}
