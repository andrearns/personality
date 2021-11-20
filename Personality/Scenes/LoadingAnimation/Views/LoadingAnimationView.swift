import SwiftUI

struct LoadingAnimationView: View {
    @State var isClockwise = true
    @State var degrees: Double = 0
    var labelText: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                    Image("star")
                    .rotationEffect(Angle(degrees: degrees))
                    .animation(
                        .linear(duration: 2)
                            .repeatForever(),
                        value: degrees
                    )
                Spacer()
            }
            if labelText != "" {
                Text(labelText)
                    .font(.system(size: 21, weight: .bold, design: .default))
                    .lineLimit(2)
                    .padding(32)
                    .multilineTextAlignment(.center)
            }
            Spacer()
        }
        .background(Color.black)
        .onAppear {
            degrees = 360
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isClockwise = false
            }
        }
    }
}

struct LoadingAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingAnimationView()
    }
}
