import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                VStack {
                    ZStack {
                        HStack(alignment: .center) {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "slider.horizontal.3")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundColor(.black)
                            }
                            Spacer()
                            Text("@andrearns")
                                .font(.system(size: 24, weight: .bold, design: .default))
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Image(systemName: "square.and.arrow.up")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundColor(.black)
                            }
                        }.padding()
                    }
                    .frame(width: .infinity, height: 400, alignment: .top)
                    .background(Color(uiColor: UIColor(named: "Green")!))
                    .cornerRadius(16)
                    .padding()
                }
                HStack {
                    Text("Badges")
                        .font(.system(size: 20, weight: .medium, design: .default))
                    Spacer()
                }.padding(.horizontal)
                Spacer()
                
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
