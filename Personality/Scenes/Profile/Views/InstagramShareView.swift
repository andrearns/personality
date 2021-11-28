//
//  InstagramShareView.swift
//  Personality
//
//  Created by André Arns on 28/11/21.
//

import SwiftUI
import UIKit

struct InstagramShareView: View {
    
    var body: some View {
        VStack {
            
            if InstagramSharingUtils.canOpenInstagramStories {
                Button(action: {
                    InstagramSharingUtils.shareToInstagramStories(UIImage(named: "characterTest")!)
                }) {
                  Text("Share to Instagram Stories")
                }
              } else {
                Text("Instagram is not available.")
              }
        }
    }
}

struct InstagramShareView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramShareView()
    }
}
