import SwiftUI

struct ProfileView: View {
    
    @State var showModal = false
    @State var selectedResult: Result?
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var results = [
        QuizBank.shared.quizList[0].results[0],
        QuizBank.shared.quizList[1].results[0],
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
                                print("Share profile")
                            }) {
                                Image(systemName: "square.and.arrow.up")
                                    .font(.system(size: 24, weight: .semibold, design: .default))
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
                    
                    LeftTitle(text: "Traços da sua personalidade")
                    
                    LazyVGrid(columns: columns) {
                        ForEach(results) { result in
                            Button(action: {
                                selectedResult = result
                                showModal = true
                            }){
                                OutputCell(result: result)
                            }
                        }
                    }.padding()
                }
            }
        }
        .background(Color.preto.edgesIgnoringSafeArea(.all))
        .sheet(isPresented: $showModal) { BadgeModalView(result: self.$selectedResult ?? Binding.constant(nil))}
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//            .preferredColorScheme(.dark)
//    }
//}
