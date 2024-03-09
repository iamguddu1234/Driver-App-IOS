//
//  YourTrip.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct YourTrip: View {
    var body: some View {
        
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
        
        
  Tuff2()
            .padding(.vertical,6)
            .padding(.leading, 85)
            .padding(.trailing)


        Divider()
        
        

    }
        
}

#Preview {
    YourTrip()
}


struct Tuff2: View {
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
