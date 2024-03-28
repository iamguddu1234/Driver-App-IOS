//
//  PartnerDetails.swift
//  Driver App
//
//  Created by Akshay Bhasme on 13/03/24.
//

import SwiftUI

struct PartnerDetails: View {
    
    @State private var number = ""
    @State private var isHidden = false
    
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                PartnerHeader()
                ScrollView(){
                
                
                VStack(alignment: .leading){
                    
                    
                    
                    TopViewDetails()
                    
                    
                    if isHidden {
                        DocImageView()

                            .onTapGesture {
                                withAnimation {
                                    isHidden.toggle()
                                }
                            }
                    } else {
                        DahsedView()
                            .onTapGesture {
                                withAnimation {
                                    isHidden.toggle()
                                }
                            }
                    }
                    
                    
                    midDetailsView()
                    
                    if isHidden {
                        DocImageView()
                            .onTapGesture {
                                withAnimation {
                                    isHidden.toggle()
                                }
                            }
                    } else {
                        DahsedView()

                            .onTapGesture {
                                withAnimation {
                                    isHidden.toggle()
                                }
                            }
                    }
                    
                    
                    
                    Text("Aadhar card number")
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .padding(.bottom, 2)
                        .padding(.top, 40)
                    
                    
                    Text("(Max file size 200kb)")
                        .font(.system(size: 18))
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                        .padding(.bottom)
                    
                    
                    TextField("Enter your Aadhar card number", text: $number)
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
                    
                    
                    
                    if isHidden {
                        DocImageViewdetails2()

                            .onTapGesture {
                                withAnimation {
                                    isHidden.toggle()
                                }
                            }
                    } else {
                        TwoDashedView()
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
                    
                    
                    
                    
                    
                    TextField("Emergency contact number", text: $number)
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
                        .padding(.top)
                    
                    
                    
                    
                    NavigationLink(destination: SubmitForApproval().navigationBarBackButtonHidden(true)){
                        
                        
                        
                        Text("Submit")
                            .textCase(.uppercase)
                            .fontWeight(.semibold)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 44)
                            .frame(width: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, height: 44)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(6.0)
                            .padding(.top, 50)
                        
                    }
                    
                    
                    
                }
                .frame(maxWidth: .infinity)
                .padding()

                
                
                
                }
            }
        
    }
        
        
    }
}

#Preview {
    PartnerDetails()
}

struct  DahsedView: View {
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
        .padding(.top)
    }
}

struct TopViewDetails: View {
    
    @State private var number = ""
    
    var body: some View {
        VStack(alignment: .leading){
            
            
            
            Text("Licence number front image")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(.bottom, 2)
            
            
            Text("(Max file size 200kb)")
                .font(.system(size: 18))
                .fontWeight(.thin)
                .foregroundColor(.black)
                .padding(.bottom)
            
            
            TextField("Enter your Licence number", text: $number)
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
    }
}

struct midDetailsView: View {
    
    @State private var number = ""
    
    
    var body: some View {
        VStack(alignment: .leading){
            
            
            Text("PAN card image")
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(.bottom, 2)
                .padding(.top, 40)
            
            
            Text("(Max file size 200kb)")
                .font(.system(size: 18))
                .fontWeight(.thin)
                .foregroundColor(.black)
                .padding(.bottom)
            
            
            TextField("Enter your PAN card number", text: $number)
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
    }
}


struct DocImageView: View {
    var body: some View {
        
        HStack{
            
            Image("user")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 100, maxHeight: 100)
                .cornerRadius(10)
                .padding(.top)
            
            
            Text("username Image.pdf")
                .font(.system(size: 18))
                .fontWeight(.light)
                .foregroundColor(.gray)
        }
       
        
    }
}



struct DocImageView2: View {
    var body: some View {
        
        HStack(alignment: .firstTextBaseline, spacing: 20){
            
            
            VStack(alignment: .leading){
                
                Text("Front")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                
                DocImageView()
                
            }
            
            VStack(alignment: .leading){
                
                Text("Back")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                DocImageView()
                
            }
            
            
            
            
            
        }
        .padding(.vertical)
        
    }
}

struct TwoDashedView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 20){
            
            
            VStack(alignment: .leading){
                
                Text("Front")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                
                DahsedView()
                
            }
            
            VStack(alignment: .leading){
                
                Text("Back")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                
                DahsedView()
                
            }
            
            
            
            
            
        }
        .padding(.vertical)
    }
}


struct DocImageViewdetails2: View {
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

struct PartnerHeader: View {
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
            
            Text("Partner Detail")
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
