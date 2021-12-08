//
//  CompatibilityView.swift
//  Personality
//
//  Created by Larissa Paschoalin on 08/12/21.
//

import SwiftUI

struct CompatibilityView: View {
    var body: some View {
        VStack {
            ZStack {
                //Imagem vai ser substituida
                Image("FundoLogin")
                    .resizable()
                    //.scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                //Precisa ter a logica de qual vai
                Image("Base_Diab")
            }
            
            Text("Nickname1 & Nickname2")
                .personalityFont(.largeTitle, textSize: 26)
                .padding(.top)
            
            HStack {
                
                VStack{
                    
                    Text("DISC")
                        .personalityFont(.title, textSize: 16)
                    
                    HStack{
                        VStack {
                            //resultado teste 1
                            Image("tenis1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                                .padding()
                                .background(Color.cinzaClaro)
                                .cornerRadius(12)
                            
                            Text("Equilibrado")
                                .personalityFont(.subheadline, textSize: 14)
                        }
                        
                        VStack {
                            //resultado teste 1
                            Image("tenis2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                                .padding()
                                .background(Color.cinzaClaro)
                                .cornerRadius(12)
                            
                            Text("Cauteloso")
                                .personalityFont(.subheadline, textSize: 14)
                        }
                    }
                }
                
                Spacer()
                
                VStack{
                    
                    Text("Tipos de criatividade")
                        .personalityFont(.title, textSize: 16)
                    
                    HStack{
                        VStack {
                            //resultado teste 1
                            Image("chapeu1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                                .padding()
                                .background(Color.cinzaClaro)
                                .cornerRadius(12)
                            
                            Text("Pensador")
                                .personalityFont(.subheadline, textSize: 14)
                        }
                        
                        VStack {
                            //resultado teste 1
                            Image("chapeu2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                                .padding()
                                .background(Color.cinzaClaro)
                                .cornerRadius(12)
                            
                            Text("Mão na massa")
                                .personalityFont(.subheadline, textSize: 14)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct CompatibilityView_Previews: PreviewProvider {
    static var previews: some View {
        CompatibilityView()
            .preferredColorScheme(.dark)
    }
}
