import SwiftUI

struct QuizCell: View {
    @State var answer: AnswerModel!
    @State var isSelected: Bool = false
    
    var body: some View {
        HStack {
            Spacer()
            Text(answer.text)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .regular, design: .default))
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Spacer()
        }
        .padding(30)
        .background(Color(isSelected ? "Green" : "LightGray"))
        .cornerRadius(16)
        .onTapGesture {
            print(answer.text)
            isSelected.toggle()
            print(isSelected)
        }
    }
}

struct QuizCell_Previews: PreviewProvider {
    static var previews: some View {
        QuizCell(answer: AnswerModel(text: "Balela"))
            .preferredColorScheme(.dark)
    }
}
