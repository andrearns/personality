import SwiftUI

struct QuizOutput: View {
    
    @EnvironmentObject var navigationHelper: NavigationHelper
    var result: Result
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                BadgeComponentView(result: result)
                
                VStack(alignment: .center) {
                    _buildTitle
                        .padding(.bottom)
                    _buildDescription
                        .padding(.bottom, 32)
                        .padding(.horizontal)
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
                    navigationHelper.selectedView = nil
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
                navigationHelper.selectedView = nil
            }) {
                Image(systemName: "xmark")
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
        )
        .navigationBarBackButtonHidden(true)
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
                .multilineTextAlignment(.center)
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
            QuizOutput(result:
                Result(
                    label: "Dominancia",
                    about: "Você vive em um mundo de possibilidades infinitas, preferindo ver as coisas não como eles são, mas pelo o que elas podem ser. Você sabe que na vida existem limites, mas você busca, de alguma maneira, ultrapassar todos eles. É emocional, apaixonado e cheio de ideias. Sua natureza é introspectiva e intuitiva, é equilibrada por um grande interesse pelo mundo ao seu redor e desejo de contribuir para a sociedade. Carismático e expressivo, você adora compartilhar suas ideias malucas com outras pessoas.",
                    code: "",
                    badge:
                        Badge(
                            iconImageURL: "chapeu2",
                            profileImagesURL: [
                                .coracaozinho : "X",
                                .diabinho : "Y",
                                .estrelinha : "W",
                                .florzinha : "Z"
                            ]
                        ),
                    colorName: ""
                )
            )
        }
    }
}

