import SwiftUI

struct QuizCell: View {
    @State var answer: Answer
    var isSelected: Bool = false
    var onTap: () -> Void = {}
    
    var body: some View {
        HStack(alignment: .center) {
            Text(answer.label)
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .medium, design: .default))
        }
        .frame(maxWidth: .infinity)
        .frame(height: 80)
        .background(Color(isSelected ? "Green" : "LightGray"))
        .cornerRadius(16)
        .onTapGesture { onTap() }
    }
}

struct QuizCell_Previews: PreviewProvider {
    static var previews: some View {
        QuizCell(answer: Answer(label: "Balela", score: "A"))
            .preferredColorScheme(.dark)
    }
}
