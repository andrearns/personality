import SwiftUI

struct ProfileView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var results = [
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
        ),
        Result(
            label: "Legal",
            about: "kkkkkkkkkk",
            code: "ACF",
            badge:
                Badge(
                    imageURL: "",
                    label: ""
                ),
            colorName: "Pink"
        ),
        Result(
            label: "Guru",
            about: "kkkkkkkkkk",
            code: "ACF",
            badge:
                Badge(
                    imageURL: "",
                    label: ""
                ),
            colorName: "Yellow"
        ),
        Result(
            label: "Raivosa",
            about: "kkkkkkkkkk",
            code: "ACF",
            badge:
                Badge(
                    imageURL: "",
                    label: ""
                ),
            colorName: "Green"
        ),
    ]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                VStack {
                    HStack(alignment: .center) {
                        Button(action: {
                    
                        }) {
                            Image(systemName: "slider.horizontal.3")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.black)
                        }
                        Spacer()
                        Text("BARBS")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundColor(.black)
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                    .padding(.horizontal)
                    .background(Color.yellow)
                    .cornerRadius(40)
                    .padding()
                }
                Circle()
                    .frame(width: 300, height: 300, alignment: .center)
                    .padding()
                    .foregroundColor(Color.laranja)
                    .padding(.vertical, 50)
                
                LeftTitle(text: "Personalidade")
                
                LazyVGrid(columns: columns) {
                    ForEach(results) { result in
                        OutputCell(result: result)
                    }
                }.padding()
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}
