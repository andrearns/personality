import SwiftUI

struct OutputCell: View {
    var result: QuizResult
    
    var body: some View {
        VStack {
            ZStack {
                Color.cinzaClaro
                    .cornerRadius(16)
                if let image_url = result.badge?.image_url, let url = URL(string: image_url) {
                    CachedAsyncImage(url: url) { phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } else {
                            ProgressView()
                        }
                    }
                    .padding(5)
                }
            }
            .frame(width: 75, height: 75)
            Text(result.label)
                .font(.system(size: 12, weight: .regular, design: .default))
                .foregroundColor(.branco)
        }
    }
}

struct OutputCell_Previews: PreviewProvider {
    static var previews: some View {
        OutputCell(result:
            QuizResult(
                label: "Sábia",
                about: "kkkkkkkkkk",
                code: "ACF",
                badge:
                    Badge(
                        image_url: "chapeu2",
                        profileImagesURL: [
                            .coracaozinho : "X",
                            .diabinho : "Y",
                            .estrelinha : "W",
                            .florzinha : "Z"
                        ]
                    ),
                color: "Blue"
            )
        )
    }
}
