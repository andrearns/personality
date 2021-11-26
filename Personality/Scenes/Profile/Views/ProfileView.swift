import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var userViewModel: UserViewModel
    @State var showModal = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ZStack {
                VStack {
                    HStack {
                        Image("backgroundTest")
                            .resizable()
                            .frame(height: 400)
                    }
                    Spacer()
                }
                
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
                    .padding(.top, 50)
                    ZStack {
                        Image(userViewModel.user.baseAvatar.getProfileImageName())
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        ForEach(userViewModel.user.userResults) { userResult in
                            if !userResult.isPrivate {
                                Image(userResult.result.badge!.profileImagesURL[userViewModel.user.baseAvatar]!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                    }
                    .padding(.horizontal, 40)
                    .frame(height: 400)
                    
                    LeftTitle(text: "Traços da sua personalidade")
                    
                    if userViewModel.user.userResults.count != 0 {
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
                    } else {
                        HStack {
                            Spacer()
                            VStack(alignment: .center) {
                                Text("zero acessórios\n por aqui")
                                    .personalityFont(.largeTitle, textSize: 30)
                                    .multilineTextAlignment(.center)
                                    .padding(.bottom)
                                
                                Text("Faça um teste aí pô")
                                    .personalityFont(.title, textSize: 18)
                            }
                            Spacer()
                        }
                        .padding()
                        .background(Material.ultraThinMaterial)
                        .cornerRadius(16)
                        .padding(.horizontal)
                    }
                }
            }
        }
        .background(Color.preto.edgesIgnoringSafeArea(.all))
        .navigationBarHidden(true)
        .statusBar(hidden: true)
        .edgesIgnoringSafeArea(.top)
        .sheet(isPresented: $showModal) { BadgeModalView(userViewModel: userViewModel, user: $userViewModel.user)}
    }
}
