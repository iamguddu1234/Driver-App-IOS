//
//  NavView.swift
//  Driver App
//
//  Created by Akshay Bhasme on 14/03/24.
//

import SwiftUI

struct NavView: View {
    
    
    var body: some View {
        

            
            
            
            
            VStack {
                
                
                HStack {
                    ZStack{
                        
                        Image("Nav")
                            .resizable()
                            .scaledToFill()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: .infinity)
                            .frame(maxWidth: .infinity)
                            .padding(.top, 200)
                        
                        
                        VStack(alignment: .leading){
                            
                            
                            VStack(alignment: .leading){
                                
                                HeaderView()
                            }
                            .padding(.top, 50)
                            
                            Divider()
                            
                            
                            
                            payinfoView()
                                .padding(.horizontal)
                            
                            Spacer()
                            
                            
                            
                            
                            
                            
                            AllMenuBtn()
                            Spacer()
                            
                        }
                    }
//                    .ignoresSafeArea()
                    .frame(width: .infinity,alignment: .leading)
                    
                    Spacer()
                }
                
                
                
            }
            .ignoresSafeArea(.all)
            .background(Color.white)
            .frame(width: UIScreen.main.bounds.width / 1.3)
            
            
            
            //        .animation(.easeInOut, value: isShowing)
            
        
    }
}

#Preview {
    NavView()
}

struct navMenu: View {
    
    var image: String = "car.fill"
    var text: String = "title"
    
    var body: some View {
        HStack{
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 20, height: 20)
            
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.horizontal, 6)
        }
        .padding(.bottom, 18)
    }
}

struct AllMenuBtn: View {
    var body: some View {
        VStack(alignment: .leading){
            
            NavigationLink(destination: MyProfile().navigationBarBackButtonHidden(true)) {
                navMenu(image: "person.circle.fill", text: "My Profile ")
            }
            
            NavigationLink(destination: YourTripFullView().navigationBarBackButtonHidden(true)) {
                navMenu(image: "map", text: "Your Trips ")
            }
            
            NavigationLink(destination: YourWallet().navigationBarBackButtonHidden(true)) {
                navMenu(image: "creditcard.fill", text: "Payment ")
            }
            
            navMenu(image: "folder.circle.fill", text: "My Wallet ")
            
            navMenu(image: "phone.fill", text: "Emergency Contact ")
            
            navMenu(image: "person.2.fill", text: "Invite Friends ")
            navMenu(image: "bell.fill", text: "Notifications ")
            navMenu(image: "headphones", text: "Support ")
            navMenu(image: "arrow.forward.to.line.square.fill", text: "Logout ")
        }
        .padding(.top, 90)
        .padding(.horizontal, 30)
    }
}

struct payinfoView: View {
    var body: some View {
        Text("₹ 500.00")
            .font(.system(size: 22))
            .fontWeight(.light)
            .foregroundColor(.black)
            .padding(.horizontal)
            .padding(.bottom, 1)
        Text("Your wallet balance")
            .font(.system(size: 16))
            .fontWeight(.light)
            .foregroundColor(.black.opacity(0.9))
            .padding(.horizontal)
    }
        
}

struct HeaderView: View {
    var body: some View {
        HStack(alignment: .center){
            
            profileImg()
            
            
            VStack(alignment: .leading){
                Text("Akshay Bhasme")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
                
                Text("9876543210")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
            }
            Spacer()
            
            Image(systemName: "gear.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
            
            
        }
        .padding(.horizontal)
    }
}
