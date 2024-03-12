//
//  YourWallet.swift
//  Driver App
//
//  Created by Akshay Bhasme on 12/03/24.
//

import SwiftUI

struct YourWallet: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                
                
                VStack{
                    
                    MainTopView()
                    
                }
                .background(.blue.opacity(0.2))
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                .padding()

                
                LearnMoreView()
                HisView()
                
                
                Text("12 Mar 2022")
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .padding()

                
                
                RecView()
                RecView()
                RecView()
            
                
                
                
                
                
            }
        }
    }
}

#Preview {
    YourWallet()
}

struct LearnMoreView: View {
    var body: some View {
        HStack{
            
            Text("Do you know money traansfer renew every money ")
                .font(.system(size: 16))
                .fontWeight(.light)
                .foregroundColor(.gray)
            
            Spacer()
            
            Text("Learn More")
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            
            
            
        }
        .padding()
    }
}

struct HisView: View {
    var body: some View {
        HStack(alignment: .top){
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Transaction History")
                    .font(.system(size: 16))
                    .fontWeight(.light)
                    .foregroundColor(.black)
                    .padding(.top)
                
                Text("All Transaction")
                    .font(.system(size: 16))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.bottom)
            }
            .padding(.leading)
            
            Spacer()
            
            
            Image(systemName: "line.3.horizontal.decrease.circle")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.trailing)
                .padding(.top)
            
            
            
        }
        .background(.gray.opacity(0.2))
    }
}

struct RecView: View {
    var body: some View {
        HStack(alignment:.top){
            
            Image(systemName: "checkmark.circle")
                .resizable()
                .foregroundColor(.green)
                .frame(width: 26, height: 26)
                .padding(.leading)
            
            
            
            VStack{
                HStack{
                    Text("Order Completed")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text("₹123")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(.green)
                    
                }
                
                
                
                HStack{
                    Text("Order IDc9238478723")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("09:22 AM")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                    
                }
                .padding(.vertical, 4)
                
                Divider()
                    .padding(.vertical)
                
            }
            .padding(.trailing)
        }
    }
}

struct MainTopView: View {
    var body: some View {
        VStack{
            
            HStack{
                
                Text("Total Earning")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .padding()
                Spacer()
                
                Text("₹1860.00")
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                    .foregroundColor(.blue)
                    .padding()
                
            }
            
            
            HStack{
                
                HStack{
                    
                    Circle()
                        .fill(Color.blue) // Inner circle color
                        .padding(4)
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 1)
                        ) // Circle outline
                        .frame(width: 20, height: 20)
                    
                    Text("Online Payment")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    
                }
                
                Spacer()
                
                
                HStack{
                    
                    Circle()
                        .fill(Color.clear) // Inner circle color
                        .padding(4)
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 1)
                        ) // Circle outline
                        .frame(width: 20, height: 20)
                    
                    Text("Cash Collected")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    
                    
                }
                
                
            }.padding(.bottom).padding(.horizontal)
            
            
            
            
            
            Divider()
                .background(Color.blue)
            
            
            HStack(alignment: .top){
                
                VStack(alignment: .leading) {
                    Text("Total Online Payment")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(.black.opacity(0.5))
                    
                    
                    
                    Text("₹1860.00")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .padding(.top, 2)
                    
                }
                
                
                Spacer()
                
                Text("View Detail →")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.blue)
                
            }
            .padding()
            
            Divider()
                .background(Color.blue)

            
            
            HStack(alignment: .center){
                
                VStack(alignment: .leading) {
                    Text("Wallet balance")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(.black.opacity(0.5))
                    
                    
                    
                    Text("₹1860.00")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .padding(.top, 2)
                    
                    Text("Transfer")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(.blue)
                        .padding(.top, 2)
                    
                }
                
                
                Spacer()
                
                
                Text("Add Balance")
                    .font(.system(size: 16))
                    .fontWeight(.light)
                    .foregroundColor(.blue)
                    .cornerRadius(4)
                    .padding(6)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.blue, lineWidth: 1)
                        
                        
                        
                    )
                
                
                
            }
            .padding()
            
            
        }
    }
}
