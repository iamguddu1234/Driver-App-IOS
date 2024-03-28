//
//  SelectVehicle.swift
//  Driver App
//
//  Created by Akshay Bhasme on 15/03/24.
//

import SwiftUI

struct SelectVehicle: View {
    @State private var number = ""
    
    @Binding var isSheetV : Bool

//    @State private var isSheetV = false

    @State private var shouldHideSheet = false // State to determine whether to hide the bottom sheet

  
    
    var body: some View {
        NavigationView {
            
            VStack{
                
                    
                    Text("Select your vehicle")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.black.opacity(0.8))
                        .padding(.bottom, 2)
                        .padding(.top, 30)
                    
        
                ScrollView{
                    
                    CheckBoxView2(chechboxTitle: "City Taxy ", isSheetV: $isSheetV)
                    CheckBoxView2(chechboxTitle: "Mini Bus ", isSheetV: $isSheetV)
                    CheckBoxView2(chechboxTitle: "Bike ", isSheetV: $isSheetV)
                    CheckBoxView2(chechboxTitle: "Innova", isSheetV: $isSheetV)
                    CheckBoxView2(chechboxTitle: "Auto Rikshaw", isSheetV: $isSheetV)
                    CheckBoxView2(chechboxTitle: "Erikshaw", isSheetV: $isSheetV)
                    CheckBoxView2(chechboxTitle: "BMW", isSheetV: $isSheetV)
                    CheckBoxView2(chechboxTitle: "Car", isSheetV: $isSheetV)
                    
                }
                
                .padding()
                
    
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                 .edgesIgnoringSafeArea(.all)
            
                 .onAppear {
                                 // Start a timer to hide the bottom sheet after 1 second
                                 DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                                     shouldHideSheet = true
                                     isSheetV = false // Dismiss the bottom sheet after 1 second
                                 }
                             }
                 
        }
        
        
    }
}

//#Preview {
//    SelectVehicle()
//}

struct CheckBoxView2: View {
    @State private var isChecked = false
    var chechboxTitle: String = "Amravati"
    
    @State private var isSheetPresentedV = false
    
    @Binding var isSheetV: Bool // Binding to control the visibility of the bottom sheet

    
    var body: some View {
        
        
        HStack {
            
            
            Text(chechboxTitle)
                .font(.system(size: 18))
                .fontWeight(.light)
                .foregroundColor(.black.opacity(0.7))
            
            Spacer()
            
            
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(isChecked ? .orange : .gray)
                .onTapGesture {
                    isChecked.toggle()
                    if isChecked {
                                            isSheetV = false // Set the binding to false when checkbox is checked
                                        }
                }
        }
        
        
        
        
        .padding(.horizontal, 9)
        .padding(.vertical, 9)
        .background(isChecked ? Color.orange.opacity(0.1) : Color.clear) // Change background color based on isChecked
        .cornerRadius(8) // Rounded corners
        
//        .sheet(isPresented: $isSheetPresentedV){
//            SelectVehicle(isSheetPresentedV : $isSheetPresentedV)
//                .presentationDetents([.medium, .large])
//            
//            
//            
//        }
        
    }
    
    
}

