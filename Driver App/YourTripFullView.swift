//
//  YourTripFullView.swift
//  Driver App
//
//  Created by Akshay Bhasme on 11/03/24.
//

import SwiftUI

struct YourTripFullView: View {
    var body: some View {
        ScrollView{
            VStack(alignment : .leading){
                
                topbarNew()
                
                
                Text("Today")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .padding()
                
                
                YourTrip()
                YourTrip()
                YourTrip()
                YourTrip()
                YourTrip()
                YourTrip()
                YourTrip()
                YourTrip()
                YourTrip()
                YourTrip()
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
            
            Image(systemName: "arrow.backward")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            
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
        .padding(.horizontal, 30)
        .padding(.bottom, 30)
        .background(.white)
        .shadow(color: Color.black.opacity(0.08), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ ,x: 0.0,y:10)
    }
}
