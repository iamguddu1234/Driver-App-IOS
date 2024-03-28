//
//  Two.swift
//  Driver App
//
//  Created by Akshay Bhasme on 09/03/24.
//

import SwiftUI

struct Two: View {
    var body: some View {
        
        NavigationView{
            
            
            VStack{
                
                HStack{
                    NavigationLink(destination: SubmitForApproval().navigationBarBackButtonHidden(true)){
                        
                        Image(systemName: "arrow.backward")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                    }
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
                    .foregroundColor(.black)
                
                
                Text("Wating for Approval")
                    .font(.title3)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                Spacer()
                
                Spacer()
                
                
             backToLogin()
                
                
                
                
                
                
                
            }
            .padding()
            
        }
        .background(.white)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Two()
}

struct backToLogin: View {
    var body: some View {
        NavigationLink(destination: Main().navigationBarBackButtonHidden(true)){
            Text("BACK TO LOGIN")
                .textCase(.uppercase)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
                .background(.orange)
                .foregroundColor(.white)
                .cornerRadius(6)
        }
    }
}
