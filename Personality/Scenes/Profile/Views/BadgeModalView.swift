//
//  ModalView.swift
//  Personality
//
//  Created by Raquel Zocoler on 23/11/21.
//

import SwiftUI

struct BadgeModalView: View {

    @ObservedObject var userViewModel: UserViewModel
    @State var isPrivate: Bool = false
    @State var aboutArray : [String] = [""]
    @Binding var user: User
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
                .frame(width: 134, height: 5, alignment: .center)
            .padding(.top, 20)
            
            ScrollView(showsIndicators: false) {
                VStack {
                    HStack {
                        Spacer()
                        BadgeComponentView(result: userViewModel.selectedUserResult!.result)
                        Spacer()
                    }
                    
                    Text(userViewModel.selectedUserResult!.result.label)
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                    
                    ForEach(aboutArray, id: \.self) { section in
                        Text(section)
                            .font(.body)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                }
            }

            Spacer()
            
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.cinzaClaro)
                    .frame(height: 57, alignment: .center)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    
                Toggle(isOn: $isPrivate){
                       Text("Ocultar do perfil")
                        .foregroundColor(Color.white)
                        .bold()
                }
                .padding(40)
            }
            .background(Material.ultraThick)
        }
        .background(Material.ultraThinMaterial)
        .onAppear {
            self.aboutArray = userViewModel.splitAboutTextInParagraphs()
            self.isPrivate = userViewModel.selectedUserResult!.isPrivate
        }
        .onChange(of: isPrivate) { newValue in
            userViewModel.updateUserResultVisibility(isPrivate: newValue)
        }
    }
}
    
