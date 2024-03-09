//
//  CashCollected.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct CashCollected: View {
    var body: some View {
        VStack{
            
            HStack(spacing: 10){
                
                Spacer()
                Image(systemName: "iphone.gen2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.blue)
                Text("Help")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.blue)
                    .padding(.trailing)
            }
            
            Image("cash")
                .resizable()
                .scaledToFit()
            
            VStack{
                Text("$123")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                    .padding(.bottom)
                
                Text("Rajat Kumar Singh to pay in cash")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(.gray.opacity(0.9))
                
            }
            .padding(.vertical,40)
            .frame(maxWidth: .infinity)
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)
            .padding(.vertical)
            
            Spacer()
            
            ButtonLast()
            
            
        }
    }
}

#Preview {
    CashCollected()
}

struct ButtonLast: View {
    var body: some View {
        Text("Submit")
            .textCase(.uppercase)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(6)
        
            .padding(.vertical, 30)
            .padding()
    }
}
