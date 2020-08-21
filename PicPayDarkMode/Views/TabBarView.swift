//
//  TabBarView.swift
//  PicPayDarkMode
//
//  Created by Raphael Cerqueira on 20/08/20.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedItem: Int
    
    var body: some View {
        ZStack {
            HStack {
                TabBarItemView(image: "house.fill", title: "Início", selectedItem: self.$selectedItem, index: 0)
                
                Spacer()
                
                TabBarItemView(image: "creditcard", title: "Carteira", selectedItem: self.$selectedItem, index: 1)
                
                Spacer()
                
                TabBarItemView(image: "", title: "", selectedItem: self.$selectedItem, index: 2)
                
                Spacer()
                
                TabBarItemView(image: "bell", title: "Notificações", selectedItem: self.$selectedItem, index: 3)
                
                Spacer()
                
                TabBarItemView(image: "gear", title: "Ajustes", selectedItem: self.$selectedItem, index: 4)
                
            }
            .background(Color(#colorLiteral(red: 0.1149870679, green: 0.1332252026, blue: 0.167704016, alpha: 1)))
            
            Button(action: {}, label: {
                ZStack {
                    Circle()
                        .frame(width: 70, height: 70)
                        .foregroundColor(Color("green"))
                        .offset(y: -30)
                    
                    VStack {
                        Image(systemName: "dollarsign.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .foregroundColor(Color("green"))
                            .clipShape(Circle())
                        
                        Text("Pagar")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .offset(y: -20)
                    }
                    .offset(y: -25)
                }
            })
        }
    }
}

struct TabBarItemView: View {
    var image: String
    var title: String
    
    @Binding var selectedItem: Int
    var index: Int
    
    var body: some View {
        Button(action: {
            self.selectedItem = self.index
        }, label: {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
                    .foregroundColor(self.selectedItem == index ? .white : .gray)
                
                Text(title)
                    .font(.system(size: 12))
                    .foregroundColor(self.selectedItem == index ? .white : .gray)
            }
        })
        .frame(width: 75)
            .padding(.vertical)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedItem: .constant(3))
    }
}
