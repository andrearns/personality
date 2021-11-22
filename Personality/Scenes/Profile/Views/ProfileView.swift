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
            ZStack {
                VStack {
                    HStack {
                        Image("backgroundTest")
                            .resizable()
                            .frame(height: 400)
                            .padding(.top, -50)
                    }
                    Spacer()
                }
                VStack {
                    VStack {
                        HStack(alignment: .center) {
                            Text("barbs")
                                .font(.system(size: 40, weight: .black, design: .default))
                                .foregroundColor(.white)
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Image(systemName: "square.and.arrow.up")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                        .padding(.horizontal)
                    }
                    ZStack {
                        Image("characterTest")
                    }
                    .padding(.top, 80)
                    .padding(.bottom, 40)
                    
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
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}
