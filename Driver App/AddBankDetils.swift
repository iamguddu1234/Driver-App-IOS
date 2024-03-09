//
//  AddBankDetils.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct AddBankDetils: View {
    
    @State private var number = ""
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Dear earning will be tranfer to the account de tail you provide below.")
                .font(.system(size: 16))
                .fontWeight(.regular)
                .foregroundColor(.gray.opacity(0.9))
            
            Spacer()
            
            
            Text("Full Name (Same as Bank Account)")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
            
            TextField("Enter Your Name", text: $number)
                .padding(.vertical)
                .padding(.horizontal, 2)
                .padding(.leading)
            
        
        .background(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
            
            Spacer()
            
            Text("Account Number ")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
            
            TextField("Enter account number", text: $number)
                .padding(.vertical)
                .padding(.horizontal, 2)
                .padding(.leading)

            
        
        .background(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
        .padding(.bottom, 6)
            
            
            
            TextField("Re-Enter account number", text: $number)
                .padding(.vertical)
                .padding(.horizontal, 2)
                .padding(.leading)
            
        
        .background(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
           
            Spacer()
            
            Text("IFSC Code")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
            
            TextField("Enter Your Name", text: $number)
                .padding(.vertical)
                .padding(.horizontal, 2)
                .padding(.leading)
            
        
        .background(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
            
            Spacer()
            
            Text("Name of Bank")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
            
            
            HStack{
               
                
                
                Text("Select bank")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.leading)
                
                Spacer()
                
                Image(systemName: "chevron.down")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                    .padding(.trailing)
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 50)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
            .background(Color("drop"))
            
           
            Spacer()
            
            
            Text("Submit")
                .textCase(.uppercase)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(6.0)
                          
            
        }
        .padding()
    }
}

#Preview {
    AddBankDetils()
}
