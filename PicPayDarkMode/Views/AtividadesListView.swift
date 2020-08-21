//
//  AtividadesListView.swift
//  PicPayDarkMode
//
//  Created by Raphael Cerqueira on 20/08/20.
//

import SwiftUI

struct AtividadesListView: View {
    @Binding var selectedItem: Int
    
    var body: some View {
        VStack {
            AtividadesView(selectedItem: self.$selectedItem)
                .padding(.top)
            
            AtividadeView(image: "timcook", text: "Você esteve em Manai Vila Leopoldina", description: "Esse pagamento rendeu R$8,00 de cashback. 💰", amount: "R$ 30,00", comments: "2", color: Color(#colorLiteral(red: 0.7192823291, green: 0.2850397825, blue: 0.3766259551, alpha: 1)))
            AtividadeView(image: "ive", text: "@ive pagou a Você", amount: "R$ 20,00", comments: "3", color: Color("green"))
            AtividadeView(image: "jobs", text: "@jobs pagou a Você", amount: "R$ 20,00", comments: "3", color: Color("green"))
        }
    }
}

struct AtividadesListView_Previews: PreviewProvider {
    static var previews: some View {
        AtividadesListView(selectedItem: .constant(0))
    }
}
