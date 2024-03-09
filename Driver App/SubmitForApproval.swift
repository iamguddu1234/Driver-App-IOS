//
//  SubmitForApproval.swift
//  Driver App
//
//  Created by Akshay Bhasme on 12/03/24.
//

import SwiftUI

struct SubmitForApproval: View {
    var body: some View {
        ZStack{
            Image("map")
                .resizable()
                .overlay(LinearGradient(colors: [Color.white.opacity(0.9),
                                                 Color.white.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomLeading))
            
                .ignoresSafeArea()
            
            
            VStack(alignment: .leading){
                Image(systemName: "arrow.backward")
                    .resizable()
                    .foregroundColor(.black)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding()
                
                Spacer()
                
                Text("Welcome Prashant Kumar Chaturvedi ")
                    .font(.system(size: 23))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding()

                
                Text("Please complete the required steps and drive with Hotspot")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.leading)
                    .padding(.trailing, 40)
                Spacer()

                
                
                Text("Required Steps")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .padding()
                
                
                TwoButton()
                
                Spacer()
                Spacer()
                
                Text("SUBMIT FOR APROVAL")
                    .textCase(.uppercase)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                
                    .padding(.vertical, 30)
                    .padding(.horizontal)
                 
       
                
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
       
    }
}

#Preview {
    SubmitForApproval()
}

struct TwoButton: View {
    var body: some View {
        VStack{
            
            
            
            HStack{
                
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .foregroundColor(.green)
                    .frame(width: 25, height: 25)
                    .padding(.leading)
                
                Text("Partner Details")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.black)
                    .padding(.leading)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.black)
                    .padding(.trailing)
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 50)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .background(Color("drop"))
            .padding(.bottom,2)
            
            
            HStack{
                
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .foregroundColor(.green)
                    .frame(width: 25, height: 25)
                    .padding(.leading)
                
                Text("Vehicle Details")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.black)
                    .padding(.leading)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.black)
                    .padding(.trailing)
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 50)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .background(Color("drop"))
            
        }
        .padding()
    }
}
