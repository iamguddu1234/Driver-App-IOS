//
//  StartRide.swift
//  Driver App
//
//  Created by Akshay Bhasme on 21/03/24.
//

import SwiftUI

struct StartRide: View {
    
    @Binding var isStartRide : Bool
    @State private var isPresentingOTPView = false


    var body: some View {
        NavigationView {
            VStack {
                btwoTopView()
                
                FirstView()
                SecView()
                
                
                HStack{
                    
                    Text("CANCEL")
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                        .frame(width: 160,height: 45)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .background(.gray.opacity(0.1))
                        .cornerRadius(4)
                    
                    
                    Spacer()

                  
                    Button(action: {
                        isPresentingOTPView = true
                    }) {
                        Text("START RIDE")
                            .frame(width: 160,height: 45)
                            .background(.orange)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .cornerRadius(4)
                        
                    }
                }
                .padding(.top)
                .frame(width: .infinity)

                
                .fullScreenCover(isPresented: $isPresentingOTPView) {
                    // Present NewView modally
                    RideOTP()
                }
            }
           
            .padding()
            

        }
        
    }
}
    


//#Preview {
//    StartRide()
//}

struct RideOTP: View {
    
    
    @State private var isPresentingOTPView = false

    
    @State private var OTP1 = ""
        @State private var OTP2 = ""
        @State private var OTP3 = ""
        @State private var OTP4 = ""
        @State private var OTP5 = ""
        @State private var OTP6 = ""
    
    
    @State private var isEndSheet = false // State to control the presentation of the bottom sheet

    
    var body: some View {
        NavigationView{
            
            VStack{
                
                HStack{
                    NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true)){
                        
                        Image(systemName: "arrow.backward")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                            .frame(width: 20, height: 20)
                    }
                    
                    
                    Text("Back")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.horizontal, 20)
                    
                    
                    Spacer()
                }
                
                Image("otp")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 200, maxHeight: 200)
                
                
                Text("Enter the OTP to start your ride")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .padding(.bottom)
                
                
                
                VStack{
                    
                    HStack(spacing : 20){
                        TextField("", text: $OTP1)
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: 40, maxHeight: 40)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        
                        TextField("", text: $OTP1)
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: 40, maxHeight: 40)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        
                        TextField("", text: $OTP1)
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: 40, maxHeight: 40)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        
                        TextField("", text: $OTP1)
                            .multilineTextAlignment(.center)
                            .font(.title3)
                            .frame(maxWidth: 40, maxHeight: 40)
                            .background(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        
                        
                            
                    }
                    
                    
                }
                
                Spacer()
                Spacer()
                
                
                Button(action: {
                    isEndSheet = true
                }) {
                    
                    Text("VERIFY & START RIDE")
                        .textCase(.uppercase)
                        .fontWeight(.semibold)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
                        .background(.orange)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                        .padding(.bottom)
                    
                    
                }
                
                .sheet(isPresented: $isEndSheet) {
                    // Present the "Select Vehicle" bottom sheet
                    EndRide(isEndSheet: $isEndSheet)
                        .presentationDetents([.medium, .large])
                }
                
               
            }
            .padding()
         
        }
    }
}
