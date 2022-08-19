//
//  ContentView.swift
//  emoji
//
//  Created by Mac on 18/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Myemojy = ""
    @State var emojies = ["😂","😭","🫡","💙","😎","🔥","😅","🐥","🫀","🤝🏻","👏🏽","😡","🥺"]

    
    var body: some View {
        ZStack{
            Image("11")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 100){
                Text("Choose your favorite emoji")
                    .font(.custom("Amiri-Bold", size: 40))
                    .foregroundColor(.black)
                    .shadow(color: .green, radius: 5)
                    .padding()
                    .background(.white.opacity(0.6))
                    .cornerRadius(20)
                
                
           Text(Myemojy)
                    .font(.custom("Amiri-Bold", size: 130))
                    .frame(width: 175, height: 175)
                    .background(.white.opacity(0.75))
                    .cornerRadius(150)
                
                ScrollView(.horizontal){
                    HStack(spacing: 25){
                        ForEach(emojies, id: \.self ){ m in
                            
                            Text(m)
                                .font(.custom("Amiri-Bold", size: 100))
                                .frame(width: 160, height: 160)
                                .background(.white.opacity(0.5))
                                .cornerRadius(400)
                                .onTapGesture {
                                    Myemojy = m
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
