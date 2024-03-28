//
//  BottomSheetViewOne.swift
//  Driver App
//
//  Created by Akshay Bhasme on 13/03/24.
//

import SwiftUI

struct BottomSheetViewOne: View {
    
    @Binding var isRideSheet : Bool
    
    
    @State private var isArrived = false

    var body: some View {
        VStack{
            
            VStack{
                BtopView()
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            .background(.gray.opacity(0.1))
            .cornerRadius(10)
            
            
            FirstView()
            SecView()
            
            
            HStack{
                
                Text("SIGNUP")
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
                
                
                Button{isArrived.toggle()}
                
                
            label: {
                Text("ACCEPT RIDE")
                    .frame(width: 160,height: 45)
                    .background(.orange)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .cornerRadius(4)
                
            }
                
                
            .sheet(isPresented: $isArrived){
                BottomSheetViewTwo(isArrived : $isArrived)
                    .presentationDetents([.medium, .large])
                
            }
                
            }
            .padding(.top)
            .frame(width: .infinity)

            
        }
        .padding()
    }
}

//#Preview {
//    BottomSheetViewOne()
//}

struct BtopView: View {
    var body: some View {
        HStack{
            
            Text("Ride")
                .font(.system(size: 20))
                .fontWeight(.light)
                .foregroundColor(.black)
            
            Spacer()
            
            Image("taxi")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .padding(.trailing)
            
            
            
            Text("32")
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .overlay(
                    Circle()
                        .trim(from: 0.0, to: 0.8)
                        .stroke(Color.green, lineWidth: 3)
                        .frame(width: 40, height: 40)
                        .padding(20)
                )
                .multilineTextAlignment(.center)
                .padding(.trailing)
        }
    }
}

struct FirstView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 20){
            Image("location")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
            // Change the color to blue

            
            
            
            
            
            VStack(alignment: .leading){
                
                HStack(alignment: .center){
                    
                    
                    Text("Hazratganj ")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.gray.opacity(0.4))
                        .padding(.horizontal, 6)
                    
                    
                    Text("0 km away")
                        .font(.system(size: 16))
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                    
                }
                .padding(.bottom)
                
                
                
                Text("A-123/4, Narahi Market, Hazrat Ganj, Lucknow Uttar Pradesh, India 226024")
                    .font(.system(size: 16))
                    .fontWeight(.light)
                    .foregroundColor(.black.opacity(0.8))
                
            }
            
            
            Spacer()
            
            
        }
        .padding(.top)
    }
}



struct SecView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 20){
            Image(systemName: "mappin.and.ellipse")
                .resizable()
                .scaledToFit()
                .foregroundColor(.gray)
                .frame(width: 24, height: 24)
            
            
            
            
            
            VStack(alignment: .leading){
                
                HStack(alignment: .center){
                    
                    
                    Text("Hazratganj")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.gray.opacity(0.4))
                        .padding(.horizontal, 6)
                    
                    
                    Text("10 km")
                        .font(.system(size: 16))
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                    
                }
                .padding(.bottom)
                
                
                
                Text("A-123/4, Narahi Market, Hazrat Ganj, Lucknow Uttar Pradesh, India 226024")
                    .font(.system(size: 16))
                    .fontWeight(.light)
                    .foregroundColor(.black.opacity(0.8))
                
            }
            
            
            Spacer()
            
            
        }
        .padding(.top)
    }
}
