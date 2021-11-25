import SwiftUI

struct ProfileView: View {
    
    @State var showModal = false
    @ObservedObject var userViewModel = UserViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
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
            ScrollView(.vertical) {
                ZStack {
                    VStack {
                        VStack {
                            HStack(alignment: .center) {
                                Text(userViewModel.user.name)
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
                            Image(userViewModel.user.baseAvatarURL)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                            ForEach(userViewModel.user.userResults) { userResult in
                                if !userResult.isPrivate {
                                    Image(userResult.result.badge!.imageURL)
                                }
                            }
                        }
                        .padding(.horizontal, 40)
                        .padding(.top, 80)
                        .padding(.bottom, 40)
                        
                        LeftTitle(text: "Traços da sua personalidade")
                        
                        LazyVGrid(columns: columns) {
                            ForEach(userViewModel.user.userResults) { userResult in
                                Button(action: {
                                    userViewModel.selectedUserResult = userResult
                                    showModal = true
                                }){
                                    OutputCell(result: userResult.result)
                                }
                            }
                        }.padding()
                    }
                }
            }
        }
        .background(Color.preto.edgesIgnoringSafeArea(.all))
        .sheet(isPresented: $showModal) { BadgeModalView(userViewModel: userViewModel, user: $userViewModel.user)}
    }
}
