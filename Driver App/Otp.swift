//
//  Otp.swift
//  Driver App
//
//  Created by Akshay Bhasme on 09/03/24.
//

import SwiftUI

struct Otp: View {
    

    
    var body: some View {
        
        
 
        
        
        NavigationView {
            VStack{
                
                Image("otp")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 250, maxHeight: 250)
                
                Spacer()
                
                
             
                    ExtractedView()
                        
           
                   


                }
            .frame(maxWidth: .infinity)
        }
            
        }
     
        
        
        
    
}

#Preview {
    Otp()
}

struct ExtractedView: View {
    
    @State private var OTP1 = ""
        @State private var OTP2 = ""
        @State private var OTP3 = ""
        @State private var OTP4 = ""
        @State private var OTP5 = ""
        @State private var OTP6 = ""
    
    var body: some View {
        VStack(alignment : .leading  ,spacing: 10){
            
            Text("Enter the OTP Sent to")
                .font(.system(size: 20))
                .foregroundColor(.black)
            
            
            
            Text("+91 xxx xxx 3210")
                .font(.system(size: 18))
                .foregroundColor(.gray)
            
     
            HStack(alignment:.top, spacing : 20){
                TextField("", text: $OTP1)
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: 40, maxHeight: 40)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                
                    .onChange(of: OTP1) { newValue in
                                // Check if the length of the input is more than 1
                                if newValue.count > 1 {
                                    // If more than 1 character, take only the first character
                                    OTP1 = String(newValue.prefix(1))
                                }
                            }
                
                
                TextField("", text: $OTP2)
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: 40, maxHeight: 40)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                    .onChange(of: OTP2) { newValue in
                                // Check if the length of the input is more than 1
                                if newValue.count > 1 {
                                    // If more than 1 character, take only the first character
                                    OTP2 = String(newValue.prefix(1))
                                }
                            }
                
                
                
                TextField("", text: $OTP3)
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: 40, maxHeight: 40)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                    .onChange(of: OTP3) { newValue in
                                // Check if the length of the input is more than 1
                                if newValue.count > 1 {
                                    // If more than 1 character, take only the first character
                                    OTP3 = String(newValue.prefix(1))
                                }
                            }
                
                
                TextField("", text: $OTP4)
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .frame(maxWidth: 40, maxHeight: 40)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                
                    .onChange(of: OTP4) { newValue in
                                // Check if the length of the input is more than 1
                                if newValue.count > 1 {
                                    // If more than 1 character, take only the first character
                                    OTP4 = String(newValue.prefix(1))
                                }
                            }
                
                
                Spacer()
                
                    
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            
            
            Text("30 Sec")
                .font(.system(size: 18))
                .fontWeight(.light)
                .foregroundColor(.black.opacity(0.6))
                .padding(.vertical, 20)
            
            
            HStack {
                Text("Don’t get the OTP")
                    .font(.system(size: 18))
                    .foregroundColor(.black.opacity(0.7))
                    .fontWeight(.light)
                
                
                
                Text("Resend")
                    .font(.system(size: 18))
                    .foregroundColor(.orange)
                    .fontWeight(.medium)
                
                
            }
            
            
            Spacer()
            NavigationLink(destination: Create_Profile().navigationBarBackButtonHidden(true)) {
                Text("Submit")
                    .textCase(.uppercase)
                    .fontWeight(.semibold)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
                    .background(.orange)
                    .foregroundColor(.white)
                    .cornerRadius(6)
            }
            
         
         
            
            
        }
        .padding()
        
        HStack(alignment : .center) {
            Text("Already Register?")
                .font(.system(size: 18))
                .foregroundColor(.black.opacity(0.7))
                .fontWeight(.light)
            
            
            
            Text("Login")
                .font(.system(size: 18))
                .foregroundColor(.orange)
                .fontWeight(.medium)
            
            
        }
        
    }
}


struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}
