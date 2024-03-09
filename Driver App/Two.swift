//
//  Two.swift
//  Driver App
//
//  Created by Akshay Bhasme on 09/03/24.
//

import SwiftUI

struct Two: View {
    var body: some View {
        VStack{
            
            HStack{
                Image(systemName: "arrow.backward")
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                Spacer()
            }
            Spacer()

            
            Image("document")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 250, maxHeight: 250)
            
            
            Text("Your Documents are submitted successfuly")
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            
            Text("Wating for Approval")
                .font(.title3)
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
            Spacer()

            Spacer()

            
            Text("BACK TO LOGIN")
                .textCase(.uppercase)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(6)
            
            
            
            
            
            
            
        }
        .background(.white)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

#Preview {
    Two()
}
