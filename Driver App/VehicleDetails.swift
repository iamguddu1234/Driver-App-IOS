//
//  VehicleDetails.swift
//  Driver App
//
//  Created by Akshay Bhasme on 13/03/24.
//

import SwiftUI

struct VehicleDetails: View {
    
    @State private var number = ""
    @State private var isHidden = false


    
    var body: some View {
        
        NavigationView{
            
            
            VStack {
                VehicleHeader()
                ScrollView{
                    VStack(alignment: .leading){
                        
                        
                        TopViewDetailsV()
                        
                        
                        if isHidden {
                            DocImageViewV()
                                .onTapGesture {
                                    withAnimation {
                                        isHidden.toggle()
                                    }
                                }
                        } else {
                            DahsedViewV()
                                .onTapGesture {
                                    withAnimation {
                                        isHidden.toggle()
                                    }
                                }
                        }
                        
                        
                        midDetailsViewV()
                        
                        if isHidden {
                            DocImageViewV()
                                .onTapGesture {
                                    withAnimation {
                                        isHidden.toggle()
                                    }
                                }
                        } else {
                            DahsedViewV()
                                .onTapGesture {
                                    withAnimation {
                                        isHidden.toggle()
                                    }
                                }
                        }
                        
                        
                        
                        ExtView()
                        
                        
                       
                        
                        
                        if isHidden {
                            DocImageViewV()

                                .onTapGesture {
                                    withAnimation {
                                        isHidden.toggle()
                                    }
                                }
                        } else {
                            DahsedViewV()
                                .onTapGesture {
                                    withAnimation {
                                        isHidden.toggle()
                                    }
                                }
                        }
                        
                        
                        
                        //                TwoDashedView()
                        //
                        //
                        //                DocImageViewdetails2()
                        
                        
                        
                        
                        
                        TextField("Enter your vehicle brand", text: $number)
                            .padding(.vertical)
                            .padding(.horizontal, 2)
                            .padding(.leading)
                            .frame(maxWidth: .infinity, maxHeight: 45)
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                            .background(.white)
                            .cornerRadius(6)
                            .padding()
                            .multilineTextAlignment(.leading) // Align placeholder text to leading edge
                        
                        
                        
                        NavigationLink(destination: SubmitForApproval().navigationBarBackButtonHidden(true)){
                            
                            Text("Submit")
                                .textCase(.uppercase)
                                .fontWeight(.semibold)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
                                .frame(width: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, height: 45)
                                .background(.orange)
                                .foregroundColor(.white)
                                .cornerRadius(6.0)
                                .padding(.top, 50)
                                .padding()
                            
                        }
                        
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    
                }
            }
        }
    }
}

#Preview {
    VehicleDetails()
}

struct  DahsedViewV: View {
    var body: some View {
        VStack {
            Image(systemName: "plus.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
                .frame(width: 25, height: 25)
            
        }
        .frame(maxWidth: 100, maxHeight: 100)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [5])) // Adjust the dash pattern as needed
                .foregroundColor(Color.gray.opacity(0.8))
        )
        .padding()

    }

}

struct TopViewDetailsV: View {
    
    @State private var number = ""
    
    var body: some View {
        VStack(alignment: .leading){
            
            
            
            Text("Registration number front image")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(.bottom, 2)
            
            
            Text("(Max file size 200kb)")
                .font(.system(size: 18))
                .fontWeight(.thin)
                .foregroundColor(.black)
                .padding(.bottom)
            
            
            TextField("Enter your registration number", text: $number)
                .padding(.vertical)
                .padding(.horizontal, 2)
                .padding(.leading)
            
                .frame(maxWidth: .infinity, maxHeight: 45)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .background(.white)
                .cornerRadius(6)
                .multilineTextAlignment(.leading) // Align placeholder text to leading edge
            
        }
        .padding()
    }
}

struct midDetailsViewV: View {
    
    @State private var number = ""
    
    
    var body: some View {
        VStack(alignment: .leading){
            
            
            Text("Insurance number image")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(.bottom, 2)
                .padding(.top, 1)
            
            
            Text("(Max file size 200kb)")
                .font(.system(size: 18))
                .fontWeight(.thin)
                .foregroundColor(.black)
                .padding(.bottom)
            
            
            TextField("Enter your insurance number", text: $number)
                .padding(.vertical)
                .padding(.horizontal, 2)
                .padding(.leading)
            
                .frame(maxWidth: .infinity, maxHeight: 45)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .background(.white)
                .cornerRadius(6)
                .multilineTextAlignment(.leading) // Align placeholder text to leading edge
            
        }
        .padding()
    }
}


struct DocImageViewV: View {
    var body: some View {
        
        HStack{
            
            Image("user")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 100, maxHeight: 100)
                .cornerRadius(10)
            
            
            Text("username Image.pdf")
                .font(.system(size: 18))
                .fontWeight(.light)
                .foregroundColor(.gray)
        }
        .padding()
       
        
    }
}



struct DocImageView2V: View {
    var body: some View {
        
        HStack(alignment: .firstTextBaseline, spacing: 20){
            
            
            VStack(alignment: .leading){
                
                Text("Front")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                
                DocImageViewV()
                
            }
            
            VStack(alignment: .leading){
                
                Text("Back")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                DocImageViewV()
                
            }
            
            
            
            
            
        }
        
    }
}

struct TwoDashedViewV: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 20){
            
            
            VStack(alignment: .leading){
                
                Text("Front")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                
                DahsedViewV()
                
            }
            
            VStack(alignment: .leading){
                
                Text("Back")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                
                DahsedViewV()
                
            }
            
            
            
            
            
        }
    }
}


struct DocImageViewdetails2V: View {
    var body: some View {
        
        HStack(alignment: .center, spacing: 20){
            
            Image("user")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 100, maxHeight: 100)
                .cornerRadius(10)
                .padding(.top)
            
            Image("user")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 100, maxHeight: 100)
                .cornerRadius(10)
                .padding(.top)
            
            VStack(alignment: .center, spacing: 10){
                
                Text("username Image.pdf")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Text("username Image.pdf")
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                
            }
            
            
            
        }
       
        
    }
}

struct ExtView: View {
    
    @State private var number = ""

    var body: some View {
        
        
        VStack(alignment: .leading){
            
            
            Text("Vehicle number Image")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(.bottom, 2)
                .padding(.top, 1)
            
            Text("(Max file size 200kb)")
                .font(.system(size: 18))
                .fontWeight(.thin)
                .foregroundColor(.black)
                .padding(.bottom)
            
            
            TextField("Enter your vehicle number", text: $number)
                .padding(.vertical)
                .padding(.horizontal, 2)
                .padding(.leading)
                .frame(maxWidth: .infinity, maxHeight: 45)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .background(.white)
                .cornerRadius(6)
                .multilineTextAlignment(.leading) // Align placeholder text to leading edge

            
        }
        .padding()
        
    }
}

struct VehicleHeader: View {
    var body: some View {
        HStack(alignment: .center){
            
            NavigationLink(destination: SubmitForApproval().navigationBarBackButtonHidden(true)) {
                
                Image(systemName: "arrow.backward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                    .foregroundColor(.black)
                    .padding(.leading)
                
            }
            
            Text("Vehicle Detail")
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.horizontal, 10)
            Spacer()
            
        
            
            
        }
        .padding(.vertical)
        .background(.white)
        .shadow(color: Color.gray.opacity(0.09), radius: 1 ,x: 0.0,y:3)
    }
}

