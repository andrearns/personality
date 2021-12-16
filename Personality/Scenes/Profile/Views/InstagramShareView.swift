//
//  InstagramShareView.swift
//  Personality
//
//  Created by André Arns on 28/11/21.
//

import SwiftUI
import UIKit

struct InstagramShareView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    @EnvironmentObject var userViewModel: UserViewModel
    
    var shareView: some View {
        ZStack {
            VStack {
                HStack {
                    Image("backgroundTest")
                        .resizable()
                        .frame(height: 350)
                        .aspectRatio(contentMode: .fit)
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
                        Image("LogoEgo")
                    }
                    .padding()
                    .padding(.top)
                }
                ZStack {
                    Image(userViewModel.user.baseAvatar.getProfileImageName())
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    ForEach(userViewModel.userResults) { userResult in
                        if !userResult.isPrivate {
                            if let image_url = userResult.result.badge?.profileImagesURL[userViewModel.user.baseAvatar], let url = URL(string: image_url) {
                                AsyncImage(url: url) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                } placeholder: {
                                    ProgressView()
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 20)
                .frame(height: 400)
                
                if userViewModel.userResults.count != 0 {
                    LeftTitle(text: "Traços da minha personalidade")
                    
                    LazyVGrid(columns: columns) {
                        ForEach(userViewModel.userResults) { userResult in
                            OutputCell(result: userResult.result)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
            
                Spacer()
            }
        }
        .background(.black)
        .padding(.top, -20)
    }
    
    var body: some View {
        VStack {
            
            shareView
                .background(Color.preto)
                .cornerRadius(16)
                .padding(20)
            
            if InstagramSharingUtils.canOpenInstagramStories {
                Button(action: {
                    let image = shareView.snapshot()
                    InstagramSharingUtils.shareToInstagramStories(image)
                }) {
                    HStack{
                        Image("instagramLogo")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing, 16)
                        Text("INSTAGRAM STORIES")
                            .personalityFont(.largeTitle, textSize: 18)
                    }
                    .foregroundColor(Color.branco)
                    .padding(.horizontal, 28)
                    .padding(.vertical, 16)
                    .background(Color.rosa)
                    .clipShape(Capsule())
                }
            }
        }.background(Color.preto, ignoresSafeAreaEdges: .all)
    }
}

struct InstagramShareView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramShareView()
    }
}
