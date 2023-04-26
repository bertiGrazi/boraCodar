//
//  CPIcons.swift
//  ContactPage
//
//  Created by Grazi  Berti on 25/04/23.
//

import SwiftUI

struct CPIcons: View {
    var imageSystemName: String = ""
    var actionButton: () -> Void
    
    var body: some View {
        VStack {
            Button(action: actionButton) {
                Image(systemName: imageSystemName)
                    .frame(width: 24, height: 24)
            }
            .foregroundColor(Color.theme.primaryTextColor)
        }
    }
}

struct CPIcons_Previews: PreviewProvider {
    static var previews: some View {
        CPIcons(imageSystemName: "pencil", actionButton: {})
            .previewLayout(.sizeThatFits)
            .background(Color.theme.headerBackground)
    }
}
