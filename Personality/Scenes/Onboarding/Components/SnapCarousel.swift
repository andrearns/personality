//
//  SnapCarousel.swift
//  Personality
//
//  Created by Larissa Paschoalin on 23/11/21.
//

import SwiftUI

struct SnapCarousel<Content: View, T: Identifiable>: View {
    
    var content: (T) -> Content
    var list: [T]
    
    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int
    
    init(spacing: CGFloat = 15, trailingSapce: CGFloat = 120, index: Binding<Int>, items: [T], @ViewBuilder content: @escaping (T) -> Content) {
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSapce
        self._index = index
        self.content = content
    }
    
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    var body: some View {
        GeometryReader { proxy in
            
            let width = proxy.size.width - (trailingSpace - spacing)
            let adjustMentWidht = (trailingSpace/2) - spacing
            
            HStack(spacing: 0) {
                ForEach(Array(list.enumerated()), id: \.offset) { i, item in
                    
                    content(item)
                        .frame(width: proxy.size.width - trailingSpace, alignment: .center)
                        .scaleEffect(i == currentIndex ? 1 : 0.8)
                }
            }
            .padding(.horizontal, spacing)
            .offset(x: (CGFloat(currentIndex) * -width) + (adjustMentWidht) + offset)
            .gesture(
                DragGesture()
                    .updating($offset, body: { ValueTransformer, out, _ in
                        
                        out = ValueTransformer.translation.width
                        
                    })
                    .onEnded({ ValueTransformer in
                        
                        let offsetX = ValueTransformer.translation.width
                        
                        let progress = -offsetX / width
                        
                        let roundIndex = progress.rounded()
                        
                        currentIndex = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                        
                        currentIndex = index
                        
                    })
                    .onChanged({ ValueTransformer in
                        let offsetX = ValueTransformer.translation.width
                        
                        let progress = -offsetX / width
                        
                        let roundIndex = progress.rounded()
                        
                        index = max(min(currentIndex + Int(roundIndex), list.count - 1), 0)
                        
                    })
            )
        }
        .animation(.easeInOut, value: offset == 0)
    }
}

struct SnapCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ChooseEgoView()
    }
}
