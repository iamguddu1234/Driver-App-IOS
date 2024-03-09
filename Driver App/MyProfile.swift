//
//  MyProfile.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct MyProfile: View {
    var body: some View {
        VStack{
            
            TopBar()
            
            Spacer()
            
            profileView()
            Spacer()
            
            
           detailContainer()
            Spacer()
            
            
        }
        
    }
}

#Preview {
    MyProfile()
}

struct TopBar: View {
    var body: some View {
        HStack{
            
            Image(systemName: "arrow.backward")
                .resizable()
                .frame(width: 20, height: 20)
            
            Text("My Profile")
                .font(.system(size: 20))
                .foregroundColor(.black)
                .padding(.horizontal, 20)
            Spacer()
            
            
            Image(systemName: "square.and.pencil")
                .resizable()
                .frame(width: 20, height: 20)
            
            
        }
        .padding(.horizontal, 30)
        .padding(.bottom, 30)
        .background(.white)
        .shadow(color: Color.black.opacity(0.08), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ ,x: 0.0,y:10)
    }
}

struct profileView: View {
    var body: some View {
        VStack{
            
            Image("user")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4) // Adjust border color and width
                )
                .padding(.vertical)
            
            
            Text("Gaurau Tiwari")
                .font(.system(size: 20))
                .foregroundColor(.black)
            
            
            Text("gaurautiwaei@gmail.com")
                .font(.system(size: 16))
                .foregroundColor(.gray)
        }
    }
}

struct detailContainer: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            
            Text("Account")
            
            HStack(alignment: .top, spacing: 10){
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 20, height: 20)
                
                VStack(alignment: .leading){
                    Text("Name")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                        .padding(.bottom, 2)
                    
                    
                    Text("Akshay Bhasme")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    
                }
                Spacer()
            }
            .frame(maxWidth: .infinity)
            
            
            HStack(alignment: .top, spacing: 10){
                Image("mobile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                VStack(alignment: .leading){
                    Text("Mobile Number")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                        .padding(.bottom, 2)
                    
                    
                    Text("9876543210 ")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    
                    
                }
                Spacer()
            }
            .frame(maxWidth: .infinity)
            
            HStack(alignment: .top, spacing: 10){
                Image(systemName: "envelope.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
                    .frame(width: 20, height: 20)
                
                VStack(alignment: .leading){
                    Text("Email ID")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                        .padding(.bottom, 2)

                    
                    
                    Text("AkshayBhasme@gmail.com")
                        .font(.system(size: 16))
                        .foregroundColor(.red)
                    
                    
                }
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.gray.opacity(0.2))
        .cornerRadius(20)
        .padding(.horizontal)
    }
}
