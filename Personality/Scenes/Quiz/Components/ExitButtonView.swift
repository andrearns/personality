//
//  exit.swift
//  Personality
//
//  Created by Bruna Oliveira on 20/11/21.
//
import SwiftUI

struct  ExitButtonView: View {
    @State var fieldName: String
    @State var action: () -> Void
    @Binding var hasError: Bool
    @State private var showErrorAlert: Bool = false
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                if hasError {
                    showErrorAlert = true
                } else {
                    self.action()
                }
            }, label: {
                Image(systemName: "xmark")
                    .font(.system(size: 22))
                    .foregroundColor(.branco)
                    .frame(width: 12, height: 12, alignment: .center)
                    .padding()
                    
            })
        }
    }
}

struct ExitButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ExitButtonView(fieldName: "story", action: {}, hasError: .constant(false))
            .preferredColorScheme(.dark)
    }
}
