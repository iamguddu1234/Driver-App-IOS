//
//  Create_Profile.swift
//  Driver App
//
//  Created by Akshay Bhasme on 10/03/24.
//

import SwiftUI

struct Create_Profile: View {
    
    @State private var number = ""
    @State private var isSheetPresented = false
    
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Image("map")
                    .resizable()
                    .overlay(LinearGradient(colors: [Color.white.opacity(0.6),
                                                     Color.orange.opacity(0.3)], startPoint: .topLeading, endPoint: .bottomLeading))
                
                    .ignoresSafeArea()
                
                
                
                
                
                VStack(alignment: .leading){
                    
                    
                    
                    VStack(alignment: .leading){
                        NavigationLink(destination: Otp().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "arrow.left")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.black)
                                .frame(width: 24, height: 24)
                                .padding(.bottom)
                        }
                        
                        Text("Create Profile")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                    
                    
                    Spacer()
                    Spacer()
                    VStack(alignment: .center) {
                        avatar()
                    }
                    .frame(maxWidth: .infinity)
                    
                    
                    EnterDetails()
                    
                    
                    
                    SelectbankView(text: "Select your State")
                        .frame(width: .infinity, height: 50)
                        .padding(.bottom, 8)
                    
                    
                    SelectbankView(text: "Select your City")
                        .frame(width: .infinity, height: 50)
                        .padding(.bottom, 8)
                    
                    
                    HStack(spacing: 10){
                        Image(systemName: "banknote.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.gray)
                        //                            .padding(.leading)
                            .hidden()
                        
                        
                        
                        TextField("Enter your Referral Code", text: $number)
                            .padding(.vertical,14)
                        //                            .padding(.horizontal, 2)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                    .background(.white)
                    .cornerRadius(6)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 8)
                    .padding(.horizontal)
                    
                    
                    Spacer()
                    
                    VerifyBtnView()
                }
                .background(.white.opacity(0.7))
                
                
                
                
                
            }
        }
        
        
        
        
        
        
        
        
        
        
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
    }
}

struct EnterDetails: View {
    
    @State private var number = ""
    
    
    var body: some View {
        VStack(spacing: 10) {
            VStack{
                
                HStack(spacing: 10){
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.gray)
                        .padding(.leading)
                    
                    
                    
                    TextField("Enter User Name", text: $number)
                        .padding(.vertical,14)
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
                .padding(.horizontal)
                .padding(.top, 20)
                .padding(.bottom, 8)
                
                
            }
            
            HStack(spacing: 10){
                Image(systemName: "iphone.gen1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                    .padding(.leading)
                
                
                
                TextField("Enter Mobile Number", text: $number)
                    .padding(.vertical,14)
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
            .padding(.bottom, 8)
            .padding(.horizontal)
            
            HStack(spacing: 10){
                Image(systemName: "envelope.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                    .padding(.leading)
                
                
                
                TextField("Enter Email Id", text: $number)
                    .padding(.vertical,14)
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
            .padding(.bottom, 8)
            .padding(.horizontal)
            
            
        }
        
        
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

struct  VerifyBtnView: View {
    
    @State private var isSheetPresented = false
    
    
    var body: some View {
        
        //        NavigationLink(destination: Otp().navigationBarBackButtonHidden(true)) {
        
        Button{isSheetPresented.toggle()}
        
        
    label: {
        Text("VERIFY")
            .textCase(.uppercase)
            .fontWeight(.semibold)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
            .frame(width: .infinity, height: 44)
            .background(.orange)
            .foregroundColor(.white)
            .cornerRadius(6)
        
        .padding()    
    }
        
        
    .sheet(isPresented: $isSheetPresented){
        SelectCity(isSheetPresented : $isSheetPresented)
            .presentationDetents([.medium, .large])
        
    }
        
        
    }
}

struct SelectbankView: View {
    
    var text : String = "Select bank"
    
    var body: some View {
        HStack{
            
            
            
            Text(text)
                .font(.system(size: 17))
                .fontWeight(.regular)
                .foregroundColor(.gray.opacity(0.6))
                .padding(.leading)
            
            Spacer()
            
            Image(systemName: "chevron.down")
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)
                .foregroundColor(.gray)
                .padding(.trailing)
            
        }
        .frame(maxWidth: .infinity, maxHeight: 45)
        .background(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
        .background(.white)
        .cornerRadius(6)
        .padding(.horizontal)
        
    }
}
