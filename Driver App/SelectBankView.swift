//
//  SelectBankView.swift
//  Driver App
//
//  Created by Akshay Bhasme on 18/03/24.
//

import SwiftUI

struct SelectBankView: View {
    
    @State private var number = ""
    
    @Binding var isBankSheetPresented : Bool
    
    var body: some View {
        VStack{
            
            VStack{
                VStack{
                    
                    Text("Select Bank")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.black.opacity(0.8))
                        .padding(.bottom)
                        .padding(.top, 30)

                    
                    
                    
                    HStack(spacing: 10){
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.gray)
                            .padding(.leading)
                        
                        
                        
                        TextField("Search your bank", text: $number)
                            .padding(.vertical,14)
                            .padding(.horizontal, 2)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    )
                    .background(.white)
                    .cornerRadius(6)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 8)
                    .padding(.horizontal)
                    
                    
                    
                    BankRecycleView(imageBank: "bank",textBank: "State bank Of India")
                    BankRecycleView(imageBank: "bank",textBank: "State bank Of India")
                    BankRecycleView(imageBank: "bank",textBank: "State bank Of India")
                    BankRecycleView(imageBank: "bank",textBank: "State bank Of India")
                    BankRecycleView(imageBank: "bank",textBank: "State bank Of India")
                    BankRecycleView(imageBank: "bank",textBank: "State bank Of India")
                    
                    
                    
              
                        .navigationBarItems(leading:Button(action: {
                            isBankSheetPresented.toggle()
                        }, label: {
                        }))
                    
                }
            }

        }
    }
}

//#Preview {
////    SelectBankView()
//}

struct BankRecycleView: View {
    
    var imageBank: String = "bank"
    var textBank: String = "bank Of india"
    
    var body: some View {
        HStack(alignment: .center){
            Image(imageBank)
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
            
            Text(textBank)
                .font(.system(size: 18))
                .fontWeight(.light)
                .foregroundColor(.black.opacity(0.8))
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
    }
}
