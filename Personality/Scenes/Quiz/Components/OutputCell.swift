import SwiftUI

struct OutputCell: View {
    var output: OutputModel
    
    var body: some View {
        VStack {
            ZStack {
                Color.cinzaClaro
                    .frame(width: 75, height: 75)
                    .cornerRadius(16)
                Color(uiColor: UIColor(named: output.colorName)!)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            }
            Text(output.name)
                .font(.system(size: 14, weight: .regular, design: .default))
        }
    }
}

struct OutputCell_Previews: PreviewProvider {
    static var previews: some View {
        OutputCell(output: OutputModel(name: "Corajosa", colorName: "Blue"))
    }
}
