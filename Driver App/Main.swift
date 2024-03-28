//
//  Main.swift
//  Driver App
//
//  Created by Akshay Bhasme on 09/03/24.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView{
            
            
            ZStack {
                Color(Color.orange).edgesIgnoringSafeArea(.top)
                
                
                VStack {
                    
                    
                    TopView()
                        .background(.white)
                        .cornerRadius(100, corners: [.bottomLeft, .bottomRight]) // Apply corner radius to bottom corners

                    
                    
                    
                    BottomView()
                        
                }
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
                
                
                
                
            }
            .background(.black)
            .frame(width: .infinity, height: .infinity)
            
            
            
        }
    }
}



struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

#Preview {
    Main()
}

struct BottomView: View {

    
    var body: some View {
        
        
        HStack(alignment: .center, spacing: 10){
            
            NavigationLink(destination: WelcomeScreen().navigationBarBackButtonHidden(true)) {
           
                    Text("SIGNUP")
                        .foregroundColor(.orange)
                        .fontWeight(.semibold)
                        .frame(width: 160,height: 45)
                        .background(.white)
                        .cornerRadius(6)
                
            }
            
            
            Spacer()
            
            NavigationLink(destination: Login().navigationBarBackButtonHidden(true)) {
                
        
                    Text("LOGIN")
                        .frame(width: 160,height: 45)
                        .fontWeight(.semibold)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.white, lineWidth: 3)
                        )
                        .cornerRadius(6)
                        .foregroundColor(.white)
                
            }
            
            
            
            
        }
        .frame(width: .infinity, height: 200)
        .padding(.horizontal, 50)
        .background(.orange)
    }
}

struct TopView: View {
    var body: some View {
        VStack(alignment: .center){
            
            Image("cab")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity,maxHeight: 280)
                .padding(.top, 80)
                .padding()

            
            Spacer()
            
            Text("Search for favorite \nMedics near you")
//                .font(.custom("Montserrat-bold", size: 30))
                .font(.system(size: 28))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .padding(.bottom)
                .multilineTextAlignment(.center)
            
            
            Text("Discover the foods from over \n3250 reataurants")
                .font(.title3)
                .foregroundColor(.black.opacity(0.6))
                .lineSpacing(4)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            
            
            Spacer()
            
         
            
            
            
        }
    }
}
