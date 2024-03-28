//
//  Myprofile2.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct Myprofile2: View {
    

    
    var body: some View {
        NavigationView{
            
            
            ZStack {
                VStack{
                    TopBarProfile()
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
            .fontWeight(.semibold)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
            .background(.orange)
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
            .frame(maxWidth: .infinity, maxHeight: 45)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            )
            .background(.white)
            .cornerRadius(6)
            .multilineTextAlignment(.leading)
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
            .frame(maxWidth: .infinity, maxHeight: 45)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .background(.white)
            .cornerRadius(6)
            .multilineTextAlignment(.leading)
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
            .frame(maxWidth: .infinity, maxHeight: 45)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .background(.white)
            .cornerRadius(6)
            .multilineTextAlignment(.leading)
            
            
            
            
        }
        .padding()
    }
}

struct TopBarProfile: View {
    var body: some View {
        
 
            
            
            HStack{
                
                NavigationLink(destination: MyProfile().navigationBarBackButtonHidden(true)) {
                    Image(systemName: "arrow.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                }
                
                Text("My Profile")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding(.horizontal, 20)
                Spacer()
                
//                
//                NavigationLink(destination: Myprofile2().navigationBarBackButtonHidden(true)) {
//                    Image(systemName: "square.and.pencil")
//                        .resizable()
//                        .frame(width: 20, height: 20)
//                }
//                
                
            }
            .padding(.horizontal, 30)
            .padding(.vertical)
            .background(.white)
            .shadow(color: Color.black.opacity(0.08), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ ,x: 0.0,y:10)
            
        
    }
}
