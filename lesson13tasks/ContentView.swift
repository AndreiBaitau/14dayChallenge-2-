//
//  ContentView.swift
//  lesson13tasks
//
//  Created by Андрей Баитов on 26.05.21.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    @State var item1 = 1
    @State var item2 = 1
    @State var item3 = 1
    
    
    var body: some View {
        
        VStack(){
            
            Text("Hi, my name is Andrei")
                .padding(.top, 50.0)
                .font(.title)
            Spacer()
            Text("Credits: " + String(credits))
            Spacer()
            HStack(){
                
                Image("fruit"+String(item1))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Image("fruit"+String(item2))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit"+String(item3))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button(action: {
                
                item1 = Int.random(in: 1...3)
                item2 = Int.random(in: 1...3)
                item3 = Int.random(in: 1...3)
                
                if item1 == item2 && item2 == item3
                {
                    credits+=50
                }else {
                    credits-=5
                }
                
                
                
                
            }, label: {
                
                
                Text("Spin")
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .padding()
                    .background(Color(hue: 0.906, saturation: 0.611, brightness: 0.938))
                    .foregroundColor(.white)
                    .cornerRadius(30)
                
            })
            
            Spacer()
            
            
            
        }
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
