//
//  Create_Profile.swift
//  Driver App
//
//  Created by Akshay Bhasme on 10/03/24.
//

import SwiftUI

struct Create_Profile: View {
    

    var body: some View {
        ZStack{
            
            
       
                    Image("map")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .opacity(0.4)
                
            
            
            VStack{
                
                avatar()
                
                VStack {
                    EnterDetails()
                    IVIew()
        
                       
                    
                    Text("VERIFY")
                        .textCase(.uppercase)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                    
                        .padding(.vertical, 30)
                        .padding()
                }
                .background(.white)
                
                
        
            
           
            }
            
  
            
           
            
            
           
        }
        .edgesIgnoringSafeArea(.all)

        
    }
}

#Preview {
    Create_Profile()
}

struct avatar: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("avatar")
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct EnterDetails: View {
    
    @State private var number = ""

    
    var body: some View {
        VStack(spacing: 10) {
            VStack{
                
                HStack(spacing: 10){
                    Image("mobile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                        .padding(.horizontal, 10)
                    
                    TextField("Enter Mobile Number", text: $number)
                        .frame(width: .infinity)
                    
                    
                    
                    
                }
                .frame(height: 40)
                .background(Color.white)
                .border(Color.gray, width: 1)
                
            }
            
            VStack{
                
                HStack(spacing: 10){
                    Image("mobile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                        .padding(.horizontal, 10)
                    
                    TextField("Enter Mobile Number", text: $number)
                        .frame(width: .infinity)
                    
                    
                    
                    
                }
                .frame(height: 40)
                .background(Color.white)
                .border(Color.gray, width: 1)
                
            }
            
            VStack{
                
                HStack(spacing: 10){
                    Image("mobile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                        .padding(.horizontal, 10)
                    
                    TextField("Enter Mobile Number", text: $number)
                        .frame(width: .infinity)
                    
                    
                    
                    
                }
                .frame(height: 40)
                .background(Color.white)
                .border(Color.gray, width: 1)
                
            }
            
            
        }
        
        
        
        .padding(.horizontal, 10)
    }
}


struct IVIew: View {
    // Define an array of color options
        let colors = ["Red", "Blue", "Green", "Yellow", "Purple"]
        
        @State private var selectedColor = "Red"
    
    var body: some View {
        VStack {
            Picker("Favorite Color", selection: $selectedColor) {
                ForEach(colors, id: \.self) { color in
                    Text(color)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .frame(maxWidth: .infinity, maxHeight:40)
            .background(Color.white)
            .border(Color.gray, width: 1)
            
            
        }
        .padding(.horizontal, 10)
    }
}
