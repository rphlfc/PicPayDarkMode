//
//  ContentView.swift
//  PicPayDarkMode
//
//  Created by Raphael Cerqueira on 20/08/20.
//

import SwiftUI

struct ContentView: View {
    @State var selectedItem = 0
    @State var selectedTabBarItem = 0
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        NavigationView()
                        
                        SugestoesView()
                        
                        AtividadesListView(selectedItem: self.$selectedItem)
                    }
                }
                .padding(.bottom, 54)
                
                VStack {
                    Spacer()

                    TabBarView(selectedItem: self.$selectedTabBarItem)
                }
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


