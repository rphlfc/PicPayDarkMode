//
//  NavigationView.swift
//  PicPayDarkMode
//
//  Created by Raphael Cerqueira on 20/08/20.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "qrcode.viewfinder")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("green"))
                })
                
                Spacer()
                
                VStack {
                    Text("Meu saldo")
                        .font(.system(size: 14))
                    
                    Text("R$ 120,00")
                        .fontWeight(.bold)
                }
                .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "person.badge.plus")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color("green"))
                })
                
            }
            
        }
        .padding(.horizontal)
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
