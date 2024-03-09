//
//  Main.swift
//  Driver App
//
//  Created by Akshay Bhasme on 09/03/24.
//

import SwiftUI

struct Main: View {
    var body: some View {
        ZStack {
            Color(Color.blue).edgesIgnoringSafeArea(.top)
           
            
            VStack {
    
           
                  TopView()
                    .background(.white)
                    .cornerRadius(50)
                    
                
                
                BottomView()
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            
            
            

           
        }
        .background(.black)
        .frame(width: .infinity, height: .infinity)
        
        
        
    }
}

#Preview {
    Main()
}

struct BottomView: View {
    var body: some View {
        HStack{
            
            Text("SIGNUP")
                .foregroundColor(.blue)
                .frame(width: 120,height: 40)
                .background(.white)
                .cornerRadius(10)
            
            
            Spacer()
            Text("LOGIN")
                .frame(width: 120,height: 40)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 4)
                )
                .foregroundColor(.white)
                .cornerRadius(10)
            
            
            
        }
        .frame(width: .infinity, height: 200)
        .padding(.horizontal, 60)
        .background(.blue)
    }
}

struct TopView: View {
    var body: some View {
        VStack(alignment: .center){
            
            Image("cab")
                .resizable()
                .frame(maxWidth: .infinity,maxHeight: 280)
                .scaledToFit()
                .padding(.top, 80)
                .padding()

            
            Spacer()
            
            Text("Search for favorite \nMedics near you")
                .font(.custom("Montserrat-Regular", size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom)
                .multilineTextAlignment(.center)
            
            
            Text("Discover the foods from over \n3250 reataurants")
                .font(.title3)
                .lineSpacing(4)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            
            
            Spacer()
            
         
            
            
            
        }
    }
}
