import SwiftUI

struct QuizOutput: View {
    
    var result: Result
    
    var body: some View {
        
        //        Text("Resultado")
        ScrollView {
            VStack {
                //            ExitButtonView(fieldName: "", action: {}, hasError: .constant(false))
                //                .padding(.leading, -50)
                
                Buildimage(result: result)
                    .padding(.top)
                _buildTitleAndDescription
                _buildButton1
                _buildButton2
                
               
            }
            .padding(.horizontal)
        }
        .background(Color.preto.edgesIgnoringSafeArea(.all))
    }
    var _buildTitleAndDescription: some View {
        VStack (alignment: .center) {
            _buildTitle
            _buildDescription
        }
        .padding()
    }
    
    var _buildTitle: some View {
        VStack {
            Text(result.label)
                .personalityFont(.largeTitle)
            //                .font(.custom("paytone-regular", size: 30))
                .multilineTextAlignment(.center)
                .foregroundColor(.branco)
            
        }
        .padding()
    }
    
    var _buildDescription: some View {
        VStack {
            Text(result.about)
                .multilineTextAlignment(.trailing)
                .foregroundColor(.branco)
                .padding()
               
        }
    }
    var _buildButton1: some View {
        HStack{
            Text ("compartilhar")
            Image (systemName: "arrow.right")
        }
        .padding(.horizontal, 28)
        .padding(.vertical, 17)
        .background(Color.branco)
        .clipShape(Capsule ())
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
    var _buildButton2: some View {
            HStack{
                Image (systemName: "arrow.left")
                Text ("compartilhar")
            }
            .foregroundColor(Color.branco)
            .padding(.horizontal, 28)
            .padding(.vertical, 17)
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

