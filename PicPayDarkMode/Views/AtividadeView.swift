//
//  AtividadeView.swift
//  PicPayDarkMode
//
//  Created by Raphael Cerqueira on 20/08/20.
//

import SwiftUI

struct AtividadeView: View {
    var image: String
    var text: String
    var description: String?
    var amount: String
    var comments: String
    var color: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }
            .padding(.top, 8)
            
            Text(description ?? "")
                .foregroundColor(.gray)
                .padding(.top, 8)
            
            HStack(spacing: 12) {
                Text(amount)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(color)
                
                Image(systemName: "lock")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .foregroundColor(.gray)
                
                Text("4h")
                    .foregroundColor(.gray)
                
                Spacer()
                
                Button(action: {}, label: {
                    HStack(spacing: 4) {
                        Image(systemName: "bubble.left")
                            .foregroundColor(.gray)
                        
                        Text("0")
                            .foregroundColor(.gray)
                    }
                })
                
                Button(action: {}, label: {
                    HStack(spacing: 4) {
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color("green"))
                        
                        Text(comments)
                            .foregroundColor(Color("green"))
                    }
                })
                
            }
            .padding(.top, 8)
        }
        .padding()
        .background(Color("secondary"))
        .cornerRadius(10)
        .padding(.horizontal, 8)
    }
}

struct AtividadeView_Previews: PreviewProvider {
    static var previews: some View {
        AtividadeView(image: "jobs", text: "adsfadsfadfs", amount: "R$ 30,00", comments: "3", color: Color("green"))
    }
}
