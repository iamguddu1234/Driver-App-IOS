//
//  EndRide.swift
//  Driver App
//
//  Created by Akshay Bhasme on 21/03/24.
//

import SwiftUI

struct EndRide: View {
    
    @Binding var isEndSheet : Bool
    
    @State private var isCashView = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                btwoTopView1()
                SecView()
                
                
                
                Button(action: {
                    isCashView = true
                }) {
                    Text("END RIDE")
                        .frame(width: 160,height: 45)
                        .background(.orange)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                        .padding(.top, 40)
    
                    
                }
                
                .fullScreenCover(isPresented: $isCashView) {
                    // Present NewView modally
                    CashCollectedFinal()
                }
            }
            .padding()
           
        }
    }
}
    
    //#Preview {
    //    EndRide()
    //}
    
    struct btwoTopView1: View {
        var body: some View {
            HStack(spacing: 20){
                
                
                
                profileImg2()
                
                
                VStack(alignment: .leading){
                    
                    Text("Akshay Bhasme")
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    HStack(alignment : .center){
                        Text("4.0")
                            .font(.system(size: 16))
                            .foregroundColor(.black)
                            .fontWeight(.regular)
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 16, maxHeight: 16)
                            .foregroundColor(.yellow)
                    }
                    
                }
                
                Spacer()
                
                //            Circle()
                //                .fill(Color.green)
                //                .frame(width: 50, height: 50)
                //                .shadow(color: .black.opacity(0.3), radius: 4, x: 0.4, y: 0.4) // Add shadow here
                //                .overlay(
                //                    Image(systemName: "phone.fill")
                //                        .resizable()
                //                        .scaledToFit()
                //                        .frame(width: 30, height: 30)
                //                        .foregroundColor(.white)
                //                )
                
                
            }
        }
    }
    
    
    struct CashCollectedFinal: View {
        
        @State private var isCashView = false
        
        @State private var isRateSheet = false // State to control the presentation of the bottom sheet


        var body: some View {
            NavigationView{
                
                VStack{
                    
                    HStack(spacing: 10){
                        
                        Spacer()
                        Image(systemName: "iphone.gen2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.orange)
                        
                        
                        Text("Help")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                            .foregroundColor(.orange)
                            .padding(.trailing)
                    }
                    
                    Image("cash")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200, maxHeight: 200)
                    
                    VStack{
                        Text("$123")
                            .font(.system(size: 30))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .padding(.bottom)
                        
                        Text("Rajat Kumar Singh to pay in cash")
                            .font(.system(size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(.gray.opacity(0.9))
                        
                    }
                    .padding(.vertical,40)
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.vertical)
                    
                    Spacer()
                    
                    Button(action: {
                        isRateSheet = true
                    }) {
                        Text("CASH COLLECTED")
                            .textCase(.uppercase)
                            .fontWeight(.semibold)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        
                            .padding(.vertical, 30)
                            .padding()
                        
                    }
                    
                    
                        .sheet(isPresented: $isRateSheet) {
                            // Present the "Select Vehicle" bottom sheet
                            RateFinalView(isRateSheet: $isRateSheet)
                                .presentationDetents([.medium, .large])
                        }
                    
                    
                }
            }
            
        }
    }
    


 
    

