import SwiftUI

struct QuizCellView: View {
    @State var answer: Answer!
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
        .background(Color(uiColor: UIColor(named: isSelected ? "Green" : "LightGray")!))
        .cornerRadius(16)
        .onTapGesture {
            print(answer.text)
            isSelected.toggle()
            print(isSelected)
        }
    }
}

struct QuizCellView_Previews: PreviewProvider {
    static var previews: some View {
        QuizCellView(answer: Answer(text: "Balela"))
            .preferredColorScheme(.dark)
    }
}
