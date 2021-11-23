//
//  Font .swift
//  Personality
//
//  Created by Bruna Oliveira on 22/11/21.
//

import Foundation
import SwiftUI


struct PersonalityFontSystem: ViewModifier {
    
    @Environment(\.sizeCategory) var sizeCategory
    
    public enum TextStyle {
        case largeTitle //Paytone, 30, Regular
        case title //SF, 20pt, Regular
        case subtitle //SF, 17pt, Regular
        case subheadline //SF, 17pt, Bold
    }
    
    var textStyle: TextStyle
    var textSize: CGFloat?

    func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: textSize ?? size)
       return content.font(.custom(fontName, size: scaledSize))
    }
    
    private var fontName: String {
        switch textStyle {
        case .largeTitle:
            return "PaytoneOne-Regular"
        
        case .title, .subtitle , .subheadline :
            return "SfProText-Regular"
        }
    }
    
    private var size: CGFloat {
        switch textStyle {
        case .largeTitle:
            return 30
        case .title:
            return 20
        case .subtitle:
            return 17
        case .subheadline:
            return 12
        }
    }
}

extension View {
    
    func personalityFont(_ textStyle: PersonalityFontSystem.TextStyle, textSize: CGFloat? = nil) -> some View {
        self.modifier(PersonalityFontSystem(textStyle: textStyle, textSize: textSize))
    }
}
