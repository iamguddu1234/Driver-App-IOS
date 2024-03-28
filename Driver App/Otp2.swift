//
//  Otp2.swift
//  Driver App
//
//  Created by Akshay Bhasme on 18/03/24.
//

import SwiftUI

struct Otp2: View {
    var body: some View {
        NavigationView {
            VStack{
                
                Image("otp")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 250, maxHeight: 250)
                
                Spacer()
                
                
             
                    ExtractedView2()
                        
           
                   


                }
            .frame(maxWidth: .infinity)
        }
            
        }
    }


#Preview {
    Otp2()
}

struct ExtractedView2: View {
    
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
                
                Spacer()
                
                    
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            
            
            Text("30 Sec")
                .font(.system(size: 18))
                .foregroundColor(.gray)
                .padding(.vertical, 20)
            
            
            HStack {
                Text("Don’t get the OTP")
                    .font(.system(size: 18))
                .foregroundColor(.black)
                
                
                
                Text("Resend")
                    .font(.system(size: 18))
                .foregroundColor(.orange)
                .fontWeight(.semibold)
                
                
            }
            
            
            Spacer()
            NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true)) {
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
        
//        HStack(alignment : .center) {
//            Text("Already Register?")
//                .font(.system(size: 18))
//            .foregroundColor(.black)
//            
//            
//            
//            Text("Login")
//                .font(.system(size: 18))
//            .foregroundColor(.blue)
//            
//            
//        }
        
    }
}


struct Line2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

