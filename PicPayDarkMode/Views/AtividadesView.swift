//
//  AtividadesView.swift
//  PicPayDarkMode
//
//  Created by Raphael Cerqueira on 20/08/20.
//

import SwiftUI

struct AtividadesView: View {
    @Binding var selectedItem: Int
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text("Atividades")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack {
                    HStack(spacing: 16) {
                        Button(action: {
                            self.selectedItem = 0
                        }, label: {
                            Text("Todas")
                                .fontWeight(.semibold)
                                .foregroundColor(self.selectedItem == 0 ? Color("green") : .white)
                        })
                        
                        Button(action: {
                            self.selectedItem = 1
                        }, label: {
                            Text("Minhas")
                                .fontWeight(.semibold)
                                .foregroundColor(self.selectedItem == 1 ? Color("green") : .white)
                        })
                    }
                    
                    RoundedRectangle(cornerRadius: 1)
                        .frame(width: 30, height: 3)
                        .foregroundColor(Color("green"))
                        .offset(x: self.selectedItem == 0 ? -35 : 30, y: -8)
                        .animation(.spring())
                }
            }
        }
        .padding(.horizontal)
    }
}

struct AtividadesView_Previews: PreviewProvider {
    static var previews: some View {
        AtividadesView(selectedItem: .constant(0))
            .background(Color.black)
    }
}
