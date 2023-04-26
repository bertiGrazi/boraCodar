//
//  ContentView.swift
//  ContactPage
//
//  Created by Grazi  Berti on 25/04/23.
//

import SwiftUI

struct CPHomeView: View {
    @State private var text: String = ""
    
    var body: some View {
        ZStack {
            Color.theme.background
            
            VStack {
                HStack {
                    Text("Meus Contatos")
                        .fontWeight(.bold)
                        .foregroundColor(Color.theme.primaryTextColor)
                        .font(.system(size: 20))
                        .padding(20)
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        CPIcons(imageSystemName: "plus") {
                            print("plus")
                        }
                        CPIcons(imageSystemName: "pencil") {
                            print("pencil")
                        }
                        CPIcons(imageSystemName: "trash.fill") {
                            print("trash")
                        }
                    }
                    .foregroundColor(Color.theme.primaryTextColor)
                    
                    .padding(20)
                }

                //TODO Placeholder White TextFiled
                TextField("Busque por nome ou por dados de contato...", text: $text)
                    .foregroundColor(Color.theme.primaryTextColor)
                    .background(Color.theme.background)
            }
            .frame(width: .infinity, height: 168)
            .background(Color.theme.headerBackground)
            
        }
        .ignoresSafeArea()
    }
}

struct CPHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CPHomeView()
    }
}
