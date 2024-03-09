//
//  TransferFinal.swift
//  Driver App
//
//  Created by Akshay Bhasme on 12/03/24.
//

import SwiftUI

struct TransferFinal: View {
    var body: some View {
        VStack{
            
            AmountDetails()
            
            HStack{
                Text("Deposit to")
                
                Spacer()
                
                Text("Add Bank Detail")
                    .foregroundColor(.blue)
                    .fontWeight(.regular)
            }
            .padding()
            
            
            BankView()
                .padding()
            Divider()
            
            Spacer()
            
            VStack {
                BottomGroupView()
                   
            }
            


                
        }
        
        
       
    }
}

#Preview {
    TransferFinal()
}

struct   AmountDetails: View {
    var body: some View {
        VStack{
            Text("Total amount to be transfered")
                .font(.system(size: 16))
                .fontWeight(.regular)
                .foregroundColor(.black)
                .padding(.bottom)
            
            Text("₹1860.00")
                .font(.system(size: 26))
                .fontWeight(.semibold)
                .foregroundColor(.blue)
            
        }
        .padding(.vertical,20)
        .frame(maxWidth: .infinity)
        .background(.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(.horizontal)
        .padding(.vertical)
    }
}


struct BankView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            
            Circle()
                .fill(Color.blue) // Inner circle color
                .padding(4)
                .overlay(
                    Circle()
                        .stroke(Color.gray, lineWidth: 1)
                ) // Circle outline
                .frame(width: 20, height: 20)
            
            
            VStack(alignment: .leading){
                Text("Bank of India")
                    .font(.system(size: 16))
                    .fontWeight(.light)
                    .foregroundColor(.black)
                    .padding(.bottom, 1)
                
                Text("Hazrat Ganj Branch ")
                    .font(.system(size: 14))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)
                
                Text("DILEEp kumar Gautam")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .padding(.bottom, 5)
                
                Text("9876543210")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
            }
            .padding(.horizontal)
            Spacer()
            
            Image(systemName: "square.and.pencil")
                .resizable()
                .frame(width: 20, height: 20)
            
            
            
            
            
        }
    }
}

struct BottomGroupView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            
            
            Text("Add New Payment method")
                .fontWeight(.light)
                .foregroundColor(.gray)
            
            
            HStack{
                
                
                HStack{
                    
                    Circle()
                        .fill(Color.white) // Inner circle color
                        .padding(4)
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 1)
                        ) // Circle outline
                        .frame(width: 20, height: 20)
                    
                    Text("Bank Account")
                        .fontWeight(.light)
                        .foregroundColor(.black)
                    
                }
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(6)
                
                
                Spacer()
                
                HStack{
                    
                    Circle()
                        .fill(Color.white) // Inner circle color
                        .padding(4)
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 1)
                            
                        ) // Circle outline
                        .frame(width: 20, height: 20)
                    
                    Text("UPI Account")
                        .fontWeight(.light)
                        .foregroundColor(.black)
                    
                }
                
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(6)
                
            }
            .padding(.vertical)
            
            
            Text("TRANSFER")
                .textCase(.uppercase)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(6.0)
            
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 1)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -5) // Negative y for upside-down shadow
        )

    }
}