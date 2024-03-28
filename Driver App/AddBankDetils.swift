//
//  AddBankDetils.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct AddBankDetils: View {
    
    @State private var isSheetPresented = false
    @State private var isBankSheetPresented = false

    
    @State private var number = ""
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                TopBar4()

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
                    
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)

                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .background(.white)
                .cornerRadius(6)
                .multilineTextAlignment(.leading)

                
                    
                    Spacer()
                    
                    Text("Account Number ")
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    
                    TextField("Enter account number", text: $number)
                        .padding(.vertical)
                        .padding(.horizontal, 2)
                        .padding(.leading)

                    
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)

                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .background(.white)
                .cornerRadius(6)
                .multilineTextAlignment(.leading)

                
                .padding(.bottom, 6)
                    
                    
                    
                    TextField("Re-Enter account number", text: $number)
                        .padding(.vertical)
                        .padding(.horizontal, 2)
                        .padding(.leading)
                    
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)

                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .background(.white)
                .cornerRadius(6)
                .multilineTextAlignment(.leading)

                
                   
                    Spacer()
                    
                    Text("IFSC Code")
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    
                    TextField("Enter IFSC code", text: $number)
                        .padding(.vertical)
                        .padding(.horizontal, 2)
                        .padding(.leading)
                    
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)

                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .background(.white)
                .cornerRadius(6)
                .multilineTextAlignment(.leading)

                
                    
                    Spacer()
                    
                    Text("Name of Bank")
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    
                    
                    Button{isBankSheetPresented.toggle()
                        
                    }
                    
                    
                label: {
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
                            .frame(width: 16, height: 16)
                            .foregroundColor(.gray)
                            .padding(.trailing)
                        
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    )
                    .background(.white)
                    .cornerRadius(6)
                    .multilineTextAlignment(.leading)
                    
                    
                    .sheet(isPresented: $isBankSheetPresented){
                        SelectBankView(isBankSheetPresented : $isBankSheetPresented)
                            .presentationDetents([.medium, .large])
                        
                    }
                    
                }
                    
                    Spacer()
                    
                    
                    
                    
                    
                   SubBtnView()
                                  
                    
                }
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
        
    }
}

#Preview {
    AddBankDetils()
}


struct  SubBtnView: View {
    
//    @State private var isBankSheetPresented = false
    
    
    var body: some View {
        
        //        NavigationLink(destination: Otp().navigationBarBackButtonHidden(true)) {
        //
        //        Button{isBankSheetPresented.toggle()
        //
        //        }
        //
        //
        //    label: {
        NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true)){
            
        Text("Submit")
            .textCase(.uppercase)
            .fontWeight(.semibold)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
            .background(.orange)
            .foregroundColor(.white)
            .cornerRadius(6.0)
        
    }
        
        
//    .sheet(isPresented: $isBankSheetPresented){
//        SelectBankView(isBankSheetPresented : $isBankSheetPresented)
//            .presentationDetents([.medium, .large])
//        
//    }
        
        
    }
}
struct TopBar4: View {
    var body: some View {
        HStack(alignment: .center){
            
            NavigationLink(destination: TransferFinal().navigationBarBackButtonHidden(true)) {
                
                Image(systemName: "arrow.backward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundColor(.black)
                
            }
            
            Text("Add Bank Details")
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.horizontal, 10)
            Spacer()
            
            
            Image(systemName: "beats.headphones")
                .resizable()
                .frame(width: 16, height: 16)
            Text("Help")
                .font(.system(size: 15))
                .foregroundColor(.black)
            
            
        }
        .padding(.horizontal, 30)
        .padding(.vertical)
        .background(.white)
        .shadow(color: Color.gray.opacity(0.09), radius: 1 ,x: 0.0,y:3)
    }
}
