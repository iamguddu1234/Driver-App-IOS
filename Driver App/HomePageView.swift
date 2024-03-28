//
//  HomePageView.swift
//  Driver App
//
//  Created by Akshay Bhasme on 14/03/24.
//

import SwiftUI

struct HomePageView: View {
    
    @State private var isDrawerOpen = false
    
    
    var body: some View {
        
        
        
        
        NavigationView {
            
            
            
            
            ZStack(alignment: .leading) {
                
                
                VStack(alignment: .leading) {
                    
                    // Conditionally render navigation view
                    
                    
                    ZStack(alignment: .top){
                        
                        
                        Image("tops")
                            .resizable()
                            .scaledToFit()
                            .ignoresSafeArea()
                            .alignmentGuide(.top) { _ in 0 }
                        
                        
                        
                        
                        VStack(alignment: .leading){
                            
                            HomeTopView(isDrawerOpen: $isDrawerOpen) // Pass isDrawerOpen to HomeTopView
                            
                            //
                            //                            HStack(alignment: .center, spacing: 10){
                            //
                            //
                            //                                //            Button("Toggle Drawer")
                            //
                            //
                            //                                Button(action: {
                            //                                    withAnimation {
                            //                                        isDrawerOpen.toggle()
                            //                                    }
                            //                                }) {
                            //                                    Image(systemName: "line.3.horizontal")
                            //                                        .resizable()
                            //                                        .scaledToFit()
                            //                                        .foregroundColor(.black)
                            //                                        .frame(width: 25, height: 25)
                            //                                }
                            //
                            //                                Text("Home")
                            //                                    .font(.system(size: 20))
                            //                                    .fontWeight(.semibold)
                            //                                    .foregroundColor(.black)
                            //                                    .padding(.leading, 10)
                            //
                            //                                Spacer()
                            //
                            //                                Image("R")
                            //                                    .resizable()
                            //                                    .scaledToFit()
                            //                                    .foregroundColor(.black)
                            //                                    .frame(width: 35, height: 35)
                            //                                    .padding(.trailing, 10)
                            //
                            //                                Image(systemName: "bell.badge.fill")
                            //                                    .resizable()
                            //                                    .scaledToFit()
                            //                                    .foregroundColor(.black)
                            //                                    .frame(width: 25, height: 25)
                            //
                            //
                            //                            }
                            //                            .padding(.horizontal, 10)
                            //                            .padding(.vertical)
                            
                            Image("main")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 300, maxHeight: 220)
                                .padding()
                            
                            
                            
                            MenuAllView()
                            
                            
                            UpdatePView()
                            
                            Spacer()
                            
                            bottomnavbar() // Add shadow here
                            
                            
                        }
                        
                        
                        
                        Spacer()
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                }
                
                
                
                if isDrawerOpen {
                    
                    Color.black.opacity(0.001) // Invisible background to capture tap events
                        .onTapGesture {
                            withAnimation(.easeOut(duration: 0.2)) { // Adjust animation duration
                                isDrawerOpen.toggle()
                            }
                        }
                        .zIndex(1)
                    
                    NavView()
                        .frame(width: UIScreen.main.bounds.width / 1.4)
                        .offset(x: 0)
                        .background(Color.white)
                        .transition(.move(edge: .leading))
                        .zIndex(2)// Add animation transition

                    
                    // Add background color to the navigation drawer
                    //                                        .shadow(color: .black.opacity(0.3), radius: 2, x: 2, y: 0) // Add shadow to the navigation drawer
                }
                
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    //    private func hideNavigationView() {
    //           isNavigationVisible = false
    //       }
}

#Preview {
    HomePageView()
}

struct   HomeMenuView: View {
    
    var image: String = "car.fill"
    var text: String = "title"
    
    var body: some View {
        VStack {
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.orange)
                .padding(.bottom)
            
            Text(text)
                .font(.system(size: 12))
                .fontWeight(.medium)
                .lineLimit(2)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
        }
        .frame(width: 100, height: 90)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .stroke(Color.black, lineWidth: 0.3)
                .shadow(color: Color.black, radius: 5, x: 0.3, y: 0.3) // Add shadow
        )
        .cornerRadius(10)
    }
}

struct   MenuAllView: View {
    var body: some View {
        VStack{
            
            
            HStack{
                
                HomeMenuView(image:"car.fill",text:"Maage Vehicle")// Rounded corner
                Spacer()
                NavigationLink(destination: MapView().navigationBarBackButtonHidden(true)){
                    HomeMenuView(image:"map",text:"My Trips ")// Rounded corner
                }
                Spacer()
                HomeMenuView(image:"building.columns",text:"Bank Details ")// Rounded corner
                
            }
            .padding()
            
            HStack{
                
                HomeMenuView(image:"doc.fill",text:"Manage Documnets ")// Rounded corner
                Spacer()
                HomeMenuView(image:"phone.connection.fill",text:"Emergency Details ")// Rounded corner
                Spacer()
                HomeMenuView(image:"star.bubble",text:"Feedback & Rating")// Rounded corner
                
            }
            .padding(.bottom)
            .padding(.horizontal)
            
        }
    }
}

struct  circleBtn: View {
    var body: some View {
        ZStack(alignment: .center){
            Circle()
                .fill(Color.white)
                .frame(width: 60, height: 60)
                .shadow(color: .black.opacity(0.1), radius: 1, x: 0.2, y: 0.2) // Add shadow here
                .overlay(
                    Image(systemName: "rectangle.grid.2x2.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.orange)
                )
            
            
        }
        .padding(.bottom, 8)
    }
}

struct  bottomnavbar: View {
    var body: some View {
        HStack(alignment: .bottom){
            VStack(alignment: .center){
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black.opacity(0.6))
                    .frame(width: 25, height: 25)
                
                Text("Home")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(.black.opacity(0.8))
            }
            Spacer()
            
            VStack(alignment: .center){
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black.opacity(0.6))
                    .frame(width: 25, height: 25)
                
                Text("profile")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(.black.opacity(0.8))
            }
            Spacer()
            
            circleBtn()
                .shadow(color: .black.opacity(0.1), radius: 1)
            
            
            Spacer()
            
            VStack(alignment: .center){
                Image(systemName: "heart.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black.opacity(0.6))
                    .frame(width: 25, height: 25)
                
                Text("favorite")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(.black.opacity(0.8))
            }
            
            Spacer()
            
            VStack(alignment: .center){
                Image(systemName: "magnifyingglass.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black.opacity(0.6))
                    .frame(width: 25, height: 25)
                
                Text("search")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(.black.opacity(0.8))
            }
            
        }
        .frame(width: .infinity, height: 55)
        .padding(.horizontal)
        .background(.white)
        .shadow(color: .black.opacity(0.3), radius: 1)
        
    }
}


struct mapTopView1: View {
    
    @State private var isDrawerOpen = false
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 10){
            
            
            //            Button("Toggle Drawer")
            
            
            Button(action: {
                withAnimation {
                    isDrawerOpen.toggle()
                    //                    hideNavigationView()
                    
                }
            }) {
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(width: 25, height: 25)
            }
            
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

struct HomeTopView: View {
    @Binding var isDrawerOpen: Bool // Use Binding for isDrawerOpen
    
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            
            
            //            Button("Toggle Drawer")
            
            
            Button(action: {
                withAnimation {
                    isDrawerOpen.toggle()
                }
            }) {
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(width: 25, height: 25)
            }
            
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
        .padding(.vertical)
        
        
    }
}

struct  UpdatePView: View {
    var body: some View {
        HStack(spacing: 20){
            profileImg()
                .padding(.leading)
            
            Text("Update Your Profile")
            Spacer()
        }
        .background(.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
