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
        .sheet(isPresented: $showModal) { ModalView(result: self.$selectedResult ?? Binding.constant(nil))}
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//            .preferredColorScheme(.dark)
//    }
//}
