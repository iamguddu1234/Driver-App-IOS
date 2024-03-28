//
//  BottomSheetViewTwo.swift
//  Driver App
//
//  Created by Akshay Bhasme on 14/03/24.
//

import SwiftUI

struct BottomSheetViewTwo: View {
    
    @Binding var isArrived : Bool
    
    @State private var isStartRide = false


    var body: some View {
        
        
        NavigationView {
            VStack {
                btwoTopView()
                FirstView()
                
                
                
                Button{isStartRide.toggle()}
                
                
            label: {
                Text("ARRIVED")
                    .frame(width: 160,height: 45)
                    .background(.orange)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .cornerRadius(4)
                    .padding(.top, 40)
                
            }
            .sheet(isPresented: $isStartRide){
                StartRide(isStartRide : $isStartRide)
                    .presentationDetents([.medium, .large])
                
            }
            }
           
            .padding()
            
//            .navigationBarItems(trailing:Button(action: {
//                isSheetPresented.toggle()
//            }, label: {
//            }))
//            .clipShape(CustomShape(cornerSize: 80, edges: [.topLeft, .topRight])) // Apply custom shape
//            .edgesIgnoringSafeArea(.all) // Extend to top edges
        }
        
    }
}

//#Preview {
//    BottomSheetViewTwo()
//}


struct profileImg2: View {
    var body: some View {
        VStack{
            
            Image("user")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4) // Adjust border color and width
                )
            
        }
    }
}

struct btwoTopView: View {
    var body: some View {
        HStack(spacing: 20){
            
            
            
            profileImg2()
            
            
            VStack(alignment: .leading){
                
                Text("Akshay Bhasme")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                
                HStack(alignment : .center){
                    Text("4.0")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                        .fontWeight(.regular)
                    
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 16, maxHeight: 16)
                        .foregroundColor(.yellow)
                }
                
            }
            
            Spacer()
            
            Circle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
                .shadow(color: .black.opacity(0.3), radius: 4, x: 0.4, y: 0.4) // Add shadow here
                .overlay(
                    Image(systemName: "phone.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                )
            
            
        }
    }
}

struct CustomShape: Shape {
    var cornerSize: CGFloat
    var edges: UIRectCorner

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: edges,
            cornerRadii: CGSize(width: cornerSize, height: cornerSize)
        )
        return Path(path.cgPath)
    }
}
