//
//  ContentView.swift
//  emoji
//
//  Created by Mac on 18/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Myemojy = 0
    @State var emojies = ["😂","😭","🫡","💙","😎","🔥","😅","🐥","🫀","🤝🏻","👏🏽","😡","🥺"]

    
    var body: some View {
        ZStack{
            Image("22")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 80){
                Text("Choose your favorite emoji")
                    .font(.custom("Amiri-Bold", size: 40))
                    .foregroundColor(.white)
                    .shadow(color: .blue, radius: 5)
                    .padding()
                    .background(.white.opacity(0.2))
                    .cornerRadius(20)
                
                
                    
                
                
                ScrollView(.horizontal){
                    HStack(spacing: 25){
                        ForEach(emojies, id: \.self ){ m in
                            
                            Text(m)
                                .font(.custom("Amiri-Bold", size: 100))
                                .frame(width: 160, height: 160)
                                .background(.white.opacity(0.5))
                                .cornerRadius(400)
                                .onTapGesture {
                                    
                                }
                        }
                      
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
