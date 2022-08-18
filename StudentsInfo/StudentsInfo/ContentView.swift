//
//  ContentView.swift
//  StudentsInfo
//
//  Created by Mac on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var MyName = ""
    @State var MyYear = ""
    @State var MyAge = ""
        
    @State var Devs = [Bashayir, Shaima, Adnan, Yaqoub, Ruaa, Jamal, Mahdi, Hamani, Deema, Fatima, Katkot, Hassan]
    
    @State var Count = 0
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white,.purple,.blue, .indigo ,.black], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                Text("Developers")
                    .font(.custom("Amiri-BoldItalic", size: 56))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
                    .padding()
                    .background(.brown.opacity(0.3))
                    .cornerRadius(26)
                
                Text("The Best Devs in Kuwait codes")
                    .font(.custom("Amiri-BoldItalic", size: 30))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2)
                    .padding()
                    .background(.brown.opacity(0.3))
                    .cornerRadius(26)
                
                HStack{
                ScrollView{
                    ForEach(Devs){ Dev in

                    Text("Name : \(Dev.fullName) \n Year : \(Dev.Year) \n Age : \(Dev.Age)")
                        .font(.custom("Amiri-BoldItalic", size: 26 ))
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 3)
                        .padding()
                        .frame(width: 210, height: 170)
                        .background(.black.opacity(0.4))
                        .cornerRadius(15)
                  Spacer()
                        }
                    }
                    
                    VStack(spacing: 20){
                        VStack(spacing: 20){
                    TextField("your Name", text: $MyName )
                            .textFieldStyle(.roundedBorder)
                    TextField("your BirthYear", text: $MyYear )
                            .textFieldStyle(.roundedBorder)
                    TextField("your Age", text: $MyAge  )
                            .textFieldStyle(.roundedBorder)
                        }.padding()
                            .background(.brown.opacity(0.3))
                        Button {
                            
                            Devs.append(StudentsDetailsModel(fullName: MyName , Year: MyYear, Age: Int(MyAge) ?? 0))
                        
                            Count = Devs.count
                            
                        } label: {
                        
                            Text("Wellcome with us")
                                .font(.custom("Amiri-BoldItalic", size: 25))
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 4)
                                .padding()
                                .background(.black)
                                .cornerRadius(15)
                        
                        }
                       let count1 = Devs.count
                        
                        
                        Text("Our Devs : \(count1)")
                            .font(.custom("Amiri-BoldItalic", size: 25))
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 2)
                            .padding()
                            .background(.brown.opacity(0.3))
                            .cornerRadius(26)
                    }
                }
            .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
