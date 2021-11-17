import SwiftUI

struct ProgressBar: View {
    @Binding var currentValue: Int
    var numberOfQuestions: Int
    
    var body: some View {
        HStack {
            ForEach(0..<numberOfQuestions) { i in
                Rectangle()
                    .foregroundColor(i <= currentValue ? Color.white : Color.cinzaClaro)
                    .frame(height: 5)
            }
        }
        .padding()
    }
}
