//
//  BillDetails.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct BillDetails: View {
    var body: some View {
        VStack {
            
            TopViewHere()
            Tuff()
                .padding()
            
            BillDemo()
            Spacer()
            Spacer()
            
            BottomMenu()
            
            
            
        }
    }
}

#Preview {
    BillDetails()
}


struct profileImg: View {
    var body: some View {
        VStack{
            
            Image("user")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4) // Adjust border color and width
                )
                .padding(.vertical)
            
        }
    }
}

struct Tuff: View {
    var body: some View {
        HStack(alignment: .center){
            VStack{
                Image(systemName: "circle.fill")
                    .foregroundColor(.green)
                
                
                Rectangle()
                    .frame(width: 3, height: 40) // Adjust width and height as needed
                    .foregroundColor(Color.gray)
                
                Image(systemName: "circle.fill")
                    .foregroundColor(.red)
                
                
            }
            
            VStack (alignment: .leading){
                
                
                
                VStack (alignment: .leading){
                    Text("04:10 PM")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.bottom,1)
                    
                    
                    
                    Text("123/4, Narahi Bazar, Hazrat Ganj Lucknow")
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                        .foregroundColor(.black.opacity(0.6))
                        .padding(.bottom, 10)
                    
                }
                .padding(.top, 10)
                
                
                
                
                
                
                
                
                VStack (alignment: .leading){
                    Text("04:10 PM")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.bottom, 1)
                    
                    
                    Text("123/4, Narahi Bazar, Hazrat Ganj Lucknow")
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                        .foregroundColor(.black.opacity(0.6))
                        .padding(.bottom, 20)
                    
                    
                    
                }
                .padding(.bottom)
                
                
                
            }
            .padding(.leading)
            
        }
        .frame(width: .infinity)
        .padding(.top)
        
        .frame(maxWidth: .infinity)
        .background(.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

struct TopViewHere: View {
    var body: some View {
        VStack{
            
            
            HStack(spacing: 20){
                
                
                
                profileImg()
                
                
                
                VStack(alignment: .leading){
                    
                    Text("Akshay Bhasme")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    HStack(alignment : .center){
                        Text("Your rating is 4.0")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .fontWeight(.regular)
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 16, maxHeight: 16)
                            .foregroundColor(.yellow)
                    }
                    
                    Divider()
                    
                }
                
            }
            
            HStack(spacing: 20){
                
                Image("auto")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 50, maxHeight: 50)
                
                
                VStack(alignment :.leading) {
                    HStack{
                        
                        Text("Green Auto")
                            .font(.system(size: 16))
                            .foregroundColor(.black)
                            .fontWeight(.regular)
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 9, maxHeight: 9)
                            .foregroundColor(.gray.opacity(0.2))
                        
                        Text("hare rang ka tempu")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .fontWeight(.regular)
                        
                    }
                    .padding(.vertical)
                    Divider()
                }
                
                
                
            }
            
            
            HStack(alignment: .center,spacing: 20){
                
                Image(systemName: "gauge.with.dots.needle.50percent")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40)
                    .frame(maxWidth: 50, maxHeight: 50)
                
                
                
                Text("$187")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                
                Spacer()
                
                
            }
            .padding(.vertical, 4)
            
            
            
            
        }
        .padding()
    }
}

struct BillDemo: View {
    var body: some View {
        VStack(alignment :.leading){
            
            Text("Bill details")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            
            HStack{
                Text("Your Trip")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .foregroundColor(.black)
                
                Spacer()
                
                Text("$123")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
            }
            .padding(.vertical,4)
            
            
            HStack{
                Text("Rounded Off")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .foregroundColor(.black)
                
                Spacer()
                
                Text("$123")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
            }
            .padding(.vertical,4)
            
            
            HStack{
                Text("Total Bill")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .foregroundColor(.black)
                
                Spacer()
                
                Text("$123")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
            }
            .padding(.vertical,4)
            
            HStack{
                Text("Total Payable")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
                Spacer()
                
                Text("$123")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
            }
            .padding(.vertical,4)
            
        }
        .padding()
    }
}

struct
BottomMenu: View {
    var body: some View {
        HStack(alignment: .center){
            VStack{
                Image(systemName: "banknote.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                
                
                Text("Coupon")
                    .font(.system(size: 16))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
            }
            .padding()
            .frame(maxWidth: 120, maxHeight: 70)
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            
            Spacer()
            
            VStack{
                Image(systemName: "envelope.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                
                
                Text("Mail Invoice")
                    .font(.system(size: 16))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
            }
            .padding()
            .frame(maxWidth: 120, maxHeight: 70)
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            
            Spacer()
            
            VStack{
                Image(systemName: "beats.headphones")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                
                
                Text("Support")
                    .font(.system(size: 16))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
            }
            .padding()
            .frame(maxWidth: 120, maxHeight: 70)
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .padding()
    }
}
