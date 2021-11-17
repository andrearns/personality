import SwiftUI

struct LeftTitle: View {
    var text: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }.padding(.horizontal)
    }
}

struct LeftTitle_Previews: PreviewProvider {
    static var previews: some View {
        LeftTitle(text: "Título")
    }
}
