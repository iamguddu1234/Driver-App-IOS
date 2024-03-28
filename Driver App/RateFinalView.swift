//
//  RateFinalView.swift
//  Driver App
//
//  Created by Akshay Bhasme on 21/03/24.
//

import SwiftUI

struct RateFinalView: View {
    
    @Binding var isRateSheet : Bool

    var body: some View {
        NavigationView{
            
            VStack{
                
                HStack{
                    
                    
                    Text("Rate your Ride ")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    
                }
                .padding(.horizontal)
                
                HStack{
                    profileImg()
                    
                    Text("Akshay Bhasme")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(.black)
                    Spacer()
                    
                }
                .padding(.horizontal)
                
                Divider()
                
                HStack{
                    
                    
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.yellow)
                    }
                }
                .padding(.top)
                
                Text("SUBMIT")
                    .frame(width: 160,height: 45)
                    .background(.orange)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .cornerRadius(4)
                    .padding(.top)
                
                
                .padding()
                
            }
        }
       
        
        
    }
}

//#Preview {
//    RateFinalView()
//}
