//
//  Myprofile2.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct Myprofile2: View {
    

    
    var body: some View {
        ZStack {
            VStack{
                
                Spacer()
                UserProfileImage()
                    .padding()
                
                
                TextFieldView()
                
                Spacer()
                
                Spacer()
                ButtonNew()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
    }
    
    }


#Preview {
    Myprofile2()
}


struct UserProfileImage: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("user")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 4) // Adjust border color and width
                    )
                
                Image("camera")
            }
            .shadow(radius: 0.5)
        }
    }
}

struct ButtonNew: View {
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

struct TextFieldView: View {
    
    @State private var number = ""

    
    var body: some View {
        VStack{
            
            
            HStack(spacing: 10){
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                    .padding(.leading)
                
                
                
                TextField("Enter User Name", text: $number)
                    .padding(.vertical)
                    .padding(.horizontal, 2)
                
            }
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .padding(.bottom, 6)
            
            
            
            
            
            
            HStack(spacing: 10){
                Image("mobile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                    .padding(.leading)
                
                
                TextField("Enter Mobile Number", text: $number)
                    .padding(.vertical)
                    .padding(.horizontal, 2)
                
            }
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .padding(.bottom,6)
            
            
            
            
            HStack(spacing: 10){
                Image(systemName: "envelope.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                    .padding(.leading)
                
                
                TextField("Enter Email Address", text: $number)
                    .padding(.vertical)
                    .padding(.horizontal, 2)
                
            }
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            
            
            
            
        }
        .padding()
    }
}
