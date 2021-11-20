import SwiftUI

struct OutputCell: View {
    var result: Result
    
    var body: some View {
        VStack {
            ZStack {
                Color.cinzaClaro
                    .frame(width: 75, height: 75)
                    .cornerRadius(16)
                Color(uiColor: UIColor(named: result.colorName)!)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            }
            Text(result.label)
                .font(.system(size: 12, weight: .regular, design: .default))
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
                        imageURL: "",
                        label: ""
                    ),
                colorName: "Blue"
            )
        )
    }
}
