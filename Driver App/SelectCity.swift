//
//  SelectCity.swift
//  Driver App
//
//  Created by Akshay Bhasme on 15/03/24.
//

import SwiftUI

struct SelectCity: View {
    @State private var number = ""
    @Binding var isSheetPresented : Bool
    
    @State private var isSheetV = false
    @State private var isSheetC = false
    
    @State private var isChecked = false
    @State private var isShowingNewView = false

    
    
    
    
    var body: some View {
        
        
        VStack{
            VStack{
                
                Text("Select Your City")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.black.opacity(0.8))
                    .padding(.bottom)
                    .padding(.top, 30)
                
                
                
                
                HStack(spacing: 10){
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.gray)
                        .padding(.leading)
                    
                    
                    
                    TextField("Search city...", text: $number)
                        .padding(.vertical,14)
                        .padding(.horizontal, 2)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 45)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
                .background(.white)
                .cornerRadius(6)
                .padding(.bottom, 8)
                .padding(.horizontal)
                
                
                
                VStack(alignment: .leading){
//                    CheckBoxView(chechboxTitle: "Nagpur", isChecked: $isChecked)
//                    CheckBoxView(chechboxTitle: "Amravati", isChecked: $isChecked)
//                    CheckBoxView(chechboxTitle: "Wardha", isChecked: $isChecked)
//                    CheckBoxView(chechboxTitle: "Chandur", isChecked: $isChecked)
//                    CheckBoxView(chechboxTitle: "Badnera", isChecked: $isChecked)
                    
                    
                    
                    CheckBoxView(chechboxTitle: "Nagpur", isSheetPresented: $isSheetPresented)
                    CheckBoxView(chechboxTitle: "Amravati", isSheetPresented: $isSheetPresented)
                    CheckBoxView(chechboxTitle: "Wardha", isSheetPresented: $isSheetPresented)
                    CheckBoxView(chechboxTitle: "Chandur", isSheetPresented: $isSheetPresented)
                    CheckBoxView(chechboxTitle: "Badnera",isSheetPresented: $isSheetPresented)
                    
                    
                }
                .padding()
                
                
                .sheet(isPresented: $isShowingNewView) {
                    // New view to be presented after checkbox is checked
                    AddVehicle()
                }
                
                
                
            }
        }
        
        
    }
}

//#Preview {
//    SelectCity()
//}

struct CheckBoxView: View {
    //    @State private var isChecked = false
    var chechboxTitle: String = "Amravati"
    
    @State private var isChecked = false

    @State private var isSheetD = false
    
//    @Binding var isChecked: Bool

    
    @State private var isPresentingNewView = false
    
    @Binding var isSheetPresented : Bool

    
    
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
                        isPresentingNewView = true
                    }
                
            
            
            
            
        }
        
        .padding(.horizontal, 9)
        .padding(.vertical, 9)
        .background(isChecked ? Color.orange.opacity(0.1) : Color.clear) // Change background color based on isChecked
        .cornerRadius(8) // Rounded corners
        
        //        .sheet(isPresented: $isSheetV){
        //            SelectVehicle(isSheetV : $isSheetV)
        //                .presentationDetents([.medium, .large])
        //
        //
        //
        //        }
        
        
        .fullScreenCover(isPresented: $isPresentingNewView) {
            // Present NewView modally
            NewView()
        }
        
    }
        
        
    }
        
    
}

struct NewView: View {
    //    @Binding var isSheetPresented : Bool
    
    @State private var isSelectVehicleSheetPresented = false // State to control the presentation of the bottom sheet
    
    @State private var isSelectVehicleCategorySheetPresented = false // State to control the presentation of the bottom sheet
    
    
    var body: some View {
        
        
        NavigationView{
            
            
            
            ZStack{
                Image("map")
                    .resizable()
                    .overlay(LinearGradient(colors: [Color.white.opacity(0.9),
                                                     Color.white.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomLeading))
                
                    .ignoresSafeArea()
                
                
                VStack(alignment: .leading){
                    NavigationLink(destination: Create_Profile().navigationBarBackButtonHidden(true)){
                        
                        
                        Image(systemName: "arrow.backward")
                            .resizable()
                            .foregroundColor(.black)
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                    }
                    
                    VStack(alignment:.center){
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        
                    }
                    .frame(maxWidth: .infinity)
                    
                    
                    
                    
                    
                    
                    Text("Add your vehicle to Continue")
                        .font(.system(size: 23))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding()
                    
                    
                    Text("Please enter the Required Details")
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                        .padding(.leading)
                        .padding(.trailing, 40)
                    
                    Spacer()
                    
                    
                    VStack{
                        
                        
                        Spacer()
                        
                        Button(action: {
                            isSelectVehicleSheetPresented = true
                        }) {
                            HStack{
                                
                                
                                Text("City Taxi")
                                    .font(.system(size: 17))
                                    .fontWeight(.light)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                
                                
                                Spacer()
                                
                                Image(systemName: "chevron.down")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 14, height: 14)
                                    .foregroundColor(.black)
                                    .padding(.trailing)
                                
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                            )
                            .background(Color("drop"))
                            .cornerRadius(6)
                            .padding(.bottom, 10)
                        }
                        
                        .sheet(isPresented: $isSelectVehicleSheetPresented) {
                            // Present the "Select Vehicle" bottom sheet
                            SelectVehicle(isSheetV: $isSelectVehicleSheetPresented)
                                .presentationDetents([.medium, .large])
                        }
                        
                        
                        
                        
                        Button(action: {
                            isSelectVehicleCategorySheetPresented = true
                        }) {
                            HStack{
                                
                                
                                
                                Text("Mini")
                                    .font(.system(size: 17))
                                    .fontWeight(.light)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.down")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 14, height: 14)
                                    .foregroundColor(.black)
                                    .padding(.trailing)
                                
                            }
                            .frame(maxWidth: .infinity
                                   , maxHeight: 45)
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                            )
                            .background(Color("drop"))
                            .cornerRadius(6)
                            
                        }
                        
                        
                        .sheet(isPresented: $isSelectVehicleCategorySheetPresented) {
                            // Present the "Select Vehicle" bottom sheet
                            SelectVehicleCategory(isSheetC: $isSelectVehicleCategorySheetPresented)
                                .presentationDetents([.medium, .large])
                        }
                        
                        Spacer()
                        Spacer()
                        
                        NavigationLink(destination: SubmitForApproval().navigationBarBackButtonHidden(true)){
                            
                            
                            Text("SAVE")
                                .textCase(.uppercase)
                                .fontWeight(.semibold)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 45)
                                .background(.orange)
                                .foregroundColor(.white)
                                .cornerRadius(6)
                            
                                .padding(.vertical, 30)
                        }
                        
                    }
                    
                }
                
                
                
                
                
                
            }
            .padding()
            
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        
        //            .navigationBarItems(leading:Button(action: {
        //                isSheetPresented.toggle()
        //            }, label: {
        //            }))
    }
}


