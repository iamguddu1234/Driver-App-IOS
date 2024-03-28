//
//  YourTripFullView.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct YourTripFullView: View {
    var body: some View {
        NavigationView{
            
            
            VStack {
                topbarNew()

                ScrollView{
                    VStack(alignment : .leading){
                        
                        
                        
                        Text("Today")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                            .padding()
                        
                        
               
                        
                        YourTrip1()
                        YourTrip1()
                        YourTrip1()
                        YourTrip1()
                        YourTrip1()
                        YourTrip1()
                        YourTrip1()
                  
                    }
                }
            }
            
        }
    }
}

#Preview {
    YourTripFullView()
}


struct topbarNew: View {
    var body: some View {
        HStack{
            
            
            NavigationLink(destination: HomePageView().navigationBarBackButtonHidden(true)){
                
                Image(systemName: "arrow.backward")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
            }
            
            
            Text("Your Trip")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(.horizontal, 20)
            Spacer()
            
            
            Image(systemName: "line.3.horizontal.decrease.circle")
                .resizable()
                .frame(width: 20, height: 20)
            
            
        }
        .padding(.horizontal)
        .padding(.vertical)
        .background(.white)
        .shadow(color: Color.black.opacity(0.06), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ ,x: 0.0,y:5)
    }
}

struct YourTrip1: View {
    var body: some View {
        
            VStack{
                
                
                NavigationLink(destination: BillDetails().navigationBarBackButtonHidden(true)){
                    
                    
                    VStack{
                        
                        
                        HStack(spacing: 20){
                            
                            
                            
                            Image("auto")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 50, maxHeight: 50)
                                .padding(.leading)
                            
                            
                            
                            
                            VStack(alignment: .leading,spacing: 4){
                                
                                HStack {
                                    Text("Wed, Aug 27, 04:17 PM")
                                        .font(.system(size: 16))
                                        .fontWeight(.regular)
                                        .foregroundColor(.black)
                                    
                                    
                                    Spacer()
                                    
                                    
                                    Text("₹186")
                                        .font(.system(size: 18))
                                        .fontWeight(.regular)
                                        .foregroundColor(.black)
                                    
                                }
                                .padding(.trailing)
                                
                                
                                
                                
                                HStack(alignment : .center){
                                    Text("Mini")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black.opacity(0.9))
                                        .fontWeight(.thin)
                                    
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: 5, maxHeight: 5)
                                        .foregroundColor(.gray.opacity(0.2))
                                    
                                    Text("CRN123876298")
                                        .font(.system(size: 14))
                                        .foregroundColor(.black.opacity(0.9))
                                        .fontWeight(.thin)
                                    
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: 5, maxHeight: 5)
                                        .foregroundColor(.gray.opacity(0.2))
                                    
                                    Text("Cancel")
                                        .font(.system(size: 14))
                                        .foregroundColor(.red)
                                        .fontWeight(.medium)
                                }
                                
                                
                                
                            }
                            
                        }
                        
                        
                        
                        
                        Tuff3()
                            .padding(.vertical,6)
                            .padding(.leading, 85)
                            .padding(.trailing)
                        
                        
                        Divider()
                        
                    }
                    
                }
                
                
                
                
            }
        }
        

    
        
}




struct Tuff3: View {
    var body: some View {
        HStack(alignment: .center){
            VStack(alignment: .leading,spacing: 0.5){
                
                HStack(alignment: .center,spacing: 20){
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.green)
                        .frame(maxWidth: 10, maxHeight: 10)
                    
                    Text("123/4, Narahi Bazar, Hazrat Ganj Lucknow")
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .font(.system(size: 15))
                        .fontWeight(.thin)
                        .foregroundColor(.black.opacity(0.9))
                    
                }
                
                
                
                VStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: 3, height: 14) // Adjust width and height as needed
                        .foregroundColor(Color.gray.opacity(0.5))
                }
                .padding(.horizontal,3)

                
                
                
                HStack(alignment: .center,spacing: 20){
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.red)
                        .frame(maxWidth: 10, maxHeight: 10)
                    
                    Text("Charbagh Railway Station Lucknow")
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .font(.system(size: 15))
                        .fontWeight(.thin)
                        .foregroundColor(.black.opacity(0.9))
                    
                }
                
                
                
            }
        }
           
    }
}
