import SwiftUI

struct OutputCell: View {
    var result: Result
    
    var body: some View {
        VStack {
            ZStack {
                Color.cinzaClaro
                    .cornerRadius(16)
                Image(result.badge!.iconImageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(5)
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
            Result(
                label: "Sábia",
                about: "kkkkkkkkkk",
                code: "ACF",
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
                color: "Blue"
            )
        )
    }
}
