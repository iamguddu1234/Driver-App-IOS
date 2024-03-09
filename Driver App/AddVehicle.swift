//
//  AddVehicle.swift
//  Driver App
//
//  Created by Akshay Bhasme on 12/03/24.
//

import SwiftUI

struct AddVehicle: View {
    var body: some View {
        ZStack{
            Image("map")
                .resizable()
                .overlay(LinearGradient(colors: [Color.white.opacity(0.9),
                                                 Color.white.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomLeading))
            
                .ignoresSafeArea()
            
            
            VStack(alignment: .leading){
                Image(systemName: "arrow.backward")
                    .resizable()
                    .foregroundColor(.black)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding()
                
                VStack(alignment:.center){
                    Image("location")
                        .resizable()
                        .scaledToFit()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    
                }
                .frame(maxWidth: .infinity)

                
                
                
                
                
                Text("Add your vehicle to Continue")
                    .font(.system(size: 23))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding()
                
                
                Text("Please enter the Required Details")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.leading)
                    .padding(.trailing, 40)
                
                Spacer()

                
                VStack{
                    
          
                
                HStack{
                   
                    
                    
                    Text("City Taxi")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.black)
                        .padding(.trailing)
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 50)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .background(Color("drop"))
                .padding(.bottom, 10)
                
                
                HStack{
                   
                    
                    
                    Text("Mini")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.black)
                        .padding(.trailing)
                    
                }
                .frame(maxWidth: .infinity
                       , maxHeight: 50)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .background(Color("drop"))
                    
                
                
            }
                .padding()
                
                Spacer()
                Spacer()

                
                Text("SAVE")
                    .textCase(.uppercase)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                
                    .padding(.vertical, 30)
                    .padding(.horizontal)
            }
            
        }
    }
}

#Preview {
    AddVehicle()
}
