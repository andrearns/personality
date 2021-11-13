import Foundation
import SwiftUI

struct SingleQuiz: View {
    
    var quiz: Quiz!
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    HStack {
                        // Quiz image
                            
                    }.frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center)
                            .background(Color(.systemGreen))
                        
                    HStack {
                        Text(quiz.name)
                            .font(.system(size: 24, weight: .bold, design:.default))
                        Spacer()
                    }.padding()
                        
                    VStack(alignment: .leading) {
                        Text(quiz.longDescription!)
                    }.padding(.horizontal)
                }
            }
            VStack {
                Spacer()
                
                Button(action: {
                            
                }) {
                    Spacer()
                    Text("Iniciar teste")
                        .bold()
                    Spacer()
                }
                .padding()
                .background(Color(.systemGreen))
                .cornerRadius(25)
                .foregroundColor(.white)
            }
            .padding()
        }.navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.top)
    }
}

struct SingleQuiz_Preview: PreviewProvider {
    static var previews: some View {
        SingleQuiz(quiz: Quiz(name: "Nome do teste", shortDescription: "Descrição curta Descrição curta ", longDescription: "Descrição longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa longo longa."))
            .preferredColorScheme(.dark)
    }
}
