import SwiftUI

struct QuizOutput: View {
    
    var result: Result
    
    var body: some View {
        
        ScrollView {
            VStack {
                Buildimage(result: result)
                    .padding(.top)
                
                VStack(alignment: .center) {
                    _buildTitle
                        .padding(.bottom)
                    _buildDescription
                        .padding(.bottom, 32)
                    Spacer()
                }
                Button(action: {
                    print("Share result")
                }) {
                    _buildButton1
                        .padding(.bottom)
                }
        
                Button(action: {
                    print("Go back to quizzos screen")
                }) {
                    _buildButton2
                        
                }
            }
            .padding(.horizontal)
        }
        .background(Color.preto.edgesIgnoringSafeArea(.all))
        .navigationBarItems(trailing:
            Button(action: {
                print("Go back to quizzos")
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
        )
    }
    
    var _buildTitle: some View {
        VStack {
            Text(result.label)
                .personalityFont(.largeTitle)
                .multilineTextAlignment(.center)
                .foregroundColor(.branco)
            
        }
    }
    
    var _buildDescription: some View {
        VStack {
            Text(result.about)
                .multilineTextAlignment(.trailing)
                .foregroundColor(.branco)
        }
    }
    var _buildButton1: some View {
        HStack{
            Text("COMPARTILHAR")
                .personalityFont(.largeTitle, textSize: 18)
            Image(systemName: "arrow.right")
                .font(Font.title2.weight(.bold))
        }
        .foregroundColor(Color.preto)
        .padding(.horizontal, 28)
        .padding(.vertical, 16)
        .background(Color.branco)
        .clipShape(Capsule ())
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
    var _buildButton2: some View {
            HStack{
                Image(systemName: "arrow.left")
                    .font(Font.title2.weight(.bold))
                Text("QUIZZOS")
                    .personalityFont(.largeTitle, textSize: 18)
                    .padding(.leading, 50)
            }
            .foregroundColor(Color.branco)
            .padding(.horizontal, 28)
            .padding(.vertical, 16)
            .overlay(Capsule().stroke(Color.branco,lineWidth: 2))
            .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    struct QuizOutput_Previews: PreviewProvider {
        static var previews: some View {
            QuizOutput(result: Result(label: "Dominancia", about: "textozin", code: "", badge: Badge (imageURL: "chapeu2", label: ""), colorName: "")
            )
        }
    }
}

