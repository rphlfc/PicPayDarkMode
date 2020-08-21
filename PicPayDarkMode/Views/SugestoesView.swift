//
//  SugestoesView.swift
//  PicPayDarkMode
//
//  Created by Raphael Cerqueira on 20/08/20.
//

import SwiftUI

struct SugestoesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sugestões para você")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding([.leading, .top])
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    SugestoesItemView(image: "uber", name: "Uber")
                    SugestoesItemView(image: "timcook", name: "@timcook")
                    SugestoesItemView(image: "lol", name: "LoL ")
                    SugestoesItemView(image: "ive", name: "@ive")
                    SugestoesItemView(image: "jobs", name: "@steve")
                }
                .padding(.horizontal)
            }
        }
        .background(Color(#colorLiteral(red: 0.05836501718, green: 0.06255429238, blue: 0.07990410179, alpha: 1)))
    }
}

struct SugestoesItemView: View {
    var image: String
    var name: String
    
    var body: some View {
        Button(action: {}, label: {
            VStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .cornerRadius(35)
                
                Text(name)
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.top, 4)
            }
            .padding(8)
        })
        .buttonStyle(PlainButtonStyle())
    }
}

struct SugestoesView_Previews: PreviewProvider {
    static var previews: some View {
        SugestoesView()
    }
}
