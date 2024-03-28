//
//  MapView.swift
//  Driver App
//
//  Created by Akshay Bhasme on 14/03/24.
//

import SwiftUI

struct MapView: View {
    
    @State private var isRideSheet = false

    var body: some View {
        
        NavigationView{
            
            
            ZStack{
                
                
                VStack{
                    
                    
                    Spacer()
                    
                    mapTopView()
                        .padding(.top, 60)
                    
                    
                    Image("map")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    
                    
                }
                
                
                
                Button{isRideSheet.toggle()}
                
                
            label: {
                Image("location")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(width: 35, height: 35)
                    .padding(.trailing, 10)
            }
                
                
            .sheet(isPresented: $isRideSheet){
                BottomSheetViewOne(isRideSheet : $isRideSheet)
                    .presentationDetents([.medium, .large])
                
            }
                
                
            }
            .edgesIgnoringSafeArea(.all)
            
        }
    }
}

#Preview {
    MapView()
}

struct mapTopView: View {
    
    @State private var isDrawerOpen = false
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 10){
            
            
            //            Button("Toggle Drawer")
            
            
            Image(systemName: "line.3.horizontal")
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
                .frame(width: 25, height: 25)
            
            
            Text("Home")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(.leading, 10)
            
            Spacer()
            
            Image("R")
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
                .frame(width: 35, height: 35)
                .padding(.trailing, 10)
            
            Image(systemName: "bell.badge.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
                .frame(width: 25, height: 25)
            
            
        }
        .padding(.horizontal, 10)
    }
}
