//
//  ContentView.swift
//  Skincare
//
//  Created by Noura Alqahtani on 23/11/2023.
//nn
//nn
import SwiftUI

struct ContentView1: View {
    let totalSteps: Int
    @Binding var currentStep: Int
    let totalSteps1: Int
    @Binding var currentStep1: Int
    @State private var isButton1Clicked = false
    @State private var isButton2Clicked = false
    @State private var isButton3Clicked = false
    @State private var isButton4Clicked = false
    @State private var isButton5Clicked = false
    @State private var selectedButton = 1
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    
                    //هنا التعديلات
                    VStack{
                        GeometryReader { geometry in
                            
                            
                            
                            VStack{
                                
                                HStack{
                                    
                                    Text("مرحباً !")
                                        .font(
                                            Font.custom("Almarai", size: 30)
                                                .weight(.bold)
                                        )
                                        .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                                    
                                    
                                    
                                }
                                .padding(.trailing, 250.0)   //hstack
                                
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 357, height: 0.5)
                                    .background(Color(red: 0.26, green: 0.37, blue: 0.16))
                                
                                ZStack {
                                    HStack {
                                        Image("sun")
                                            .resizable()
                                            .frame(width: 380, height: 200)
                                    }
                                    .padding(.leading, 6.0) //hstack
                                    
                                    VStack(spacing: 15){
                                        
                                        HStack(spacing: 50){
                                            Text("اليوم الاول")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.black)
                                            
                                            
                                            
                                            Text("اليوم الثالث ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.black)
                                            
                                            
                                            Text(" اليوم الخامس ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.black)
                                            
                                            
                                            
                                            Text("اليوم السابع ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.black)
                                        }//.padding(.leading, 7.0)
                                        //
                                        HStack(spacing: 0) {
                                            ForEach(0..<7) { stepIndex in
                                                ZStack (alignment: .leading){
                                                    //HStack {
                                                    
                                                    HStack(spacing: 0){
                                                        if stepIndex != 6 {
                                                            Rectangle()
                                                                .foregroundColor(stepIndex < currentStep ? Color(hex: "425E2A") : .gray) // Change the line color here
                                                                .frame(width: 55, height: 5) // Adjust the width and height to fit your design
                                                        }
                                                        
                                                    }//.padding(.leading,1)
                                                    
                                                    HStack(spacing: 0){
                                                        Circle()
                                                            .foregroundColor(stepIndex < currentStep ? Color(hex: "425E2A") : Color(hex: "f5efe7")) // Change the circle color here
                                                            .frame(width: 25, height: 20)
                                                    }//.padding(.trailing,25)
                                                    //}
                                                    
                                                }   .onTapGesture {
                                                    currentStep = stepIndex
                                                }
                                            }
                                        }//.padding()
                                        //zstack
                                        HStack(spacing: 50){
                                            
                                            
                                            Text("اليوم الثاني ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.black)
                                            
                                            
                                            Text(" اليوم الرابع ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.black)
                                            
                                            
                                            Text(" اليوم السادس ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.black)
                                            
                                            
                                        }
                                        Button(action: {
                                            if currentStep < totalSteps {
                                                currentStep += 1
                                            } else {
                                                currentStep = 0 // Reset the current step to 0
                                            }
                                        }) {
                                            
                                            Text("انتهيت")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                            
                                            
                                                .foregroundColor(.clear)
                                                .frame(width: 59, height: 20)
                                                .background(.white)
                                            
                                                .cornerRadius(10)
                                        }
                                    }.padding(.top,40 )
                                }
                                
                                
                                ZStack {
                                    HStack {
                                        Image("moon")
                                            .resizable()
                                            .frame(width: 380, height: 200)
                                    }
                                    //  .padding(.leading, -22.0) //hstack
                                    
                                    VStack(spacing: 15){
                                        
                                        HStack(spacing: 50){
                                            Text("اليوم الاول")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.white)
                                            
                                            
                                            
                                            Text("اليوم الثالث ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.white)
                                            
                                            
                                            
                                            Text(" اليوم الخامس ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.white)
                                            
                                            
                                            Text("اليوم السابع ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                        //(alignment: .leading)
                                        HStack(spacing: 0) {
                                            ForEach(0..<7) { stepIndex in
                                                ZStack (alignment: .leading){
                                                    //HStack {
                                                    
                                                    HStack(spacing: 0){
                                                        if stepIndex != 6 {
                                                            Rectangle()
                                                                .foregroundColor(stepIndex < currentStep1 ? Color(hex: "425E2A") : .gray) // Change the line color here
                                                                .frame(width: 55, height: 5) // Adjust the width and height to fit your design
                                                        }
                                                        
                                                    }//.padding(.leading,1)
                                                    
                                                    HStack(spacing: 0){
                                                        Circle()
                                                            .foregroundColor(stepIndex < currentStep1 ? Color(hex: "425E2A") : Color(hex: "f5efe7")) // Change the circle color here
                                                            .frame(width: 25, height: 20)
                                                    }//.padding(.trailing,25)
                                                    //}
                                                    
                                                }   .onTapGesture {
                                                    currentStep1 = stepIndex
                                                }
                                            }
                                        }//.padding()//zstack
                                        
                                        HStack(spacing: 50){
                                            
                                            
                                            Text("اليوم الثاني ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.white)
                                            
                                            
                                            
                                            Text(" اليوم الرابع ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.white)
                                            
                                            
                                            
                                            Text(" اليوم السادس ")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .foregroundColor(.white)
                                            
                                            
                                        }
                                        
                                        Button(action: {
                                            if currentStep1 < totalSteps1 {
                                                currentStep1 += 1
                                            } else {
                                                currentStep1 = 0 // Reset the current step to 0
                                            }
                                        }) {
                                            
                                            Text("انتهيت")
                                                .font(Font.custom("Tajawal", size: 12))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.black)
                                            
                                            
                                                .foregroundColor(.clear)
                                                .frame(width: 59, height: 20)
                                                .background(.white)
                                            
                                                .cornerRadius(10)
                                        }
                                    }.padding(.top, 50.0)
                                }
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 357, height: 0.5)
                                    .background(Color(red: 0.26, green: 0.37, blue: 0.16))
                                
                                
                                //  ZStack
                                //                    .frame(height: 4)
                                //                    .frame(maxWidth: .infinity)
                                
                                
                                
                            } //vstack
                            
                            
                            
                        }//GeometryReader { geometry in
                        
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15) {
                                    //ForEach(1...10, id: \.self) { index in
                                    Button(action: {
                                        // Button action
                                        isButton1Clicked = true
                                        isButton2Clicked = false
                                        isButton3Clicked = false
                                        isButton4Clicked = false
                                        isButton5Clicked = false
                                        selectedButton = 1
                                    }) {
                                        
                                        Text("الكل")
                                            .font(Font.custom("Almarai", size: 12))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(isButton1Clicked ? Color(red: 0.97, green: 0.96, blue: 0.95) : Color(red: 0.26, green: 0.37, blue: 0.16))
                                            .padding(.horizontal, 14)
                                            .padding(.vertical, 10)
                                            .background(isButton1Clicked ? Color(red: 0.26, green: 0.37, blue: 0.16) : Color(red: 0.97, green: 0.96, blue: 0.95))
                                        
                                            .cornerRadius(14)
                                        //  .frame(width: 96, height:33 )
                                    }
                                    
                                    Button(action: {
                                        // Button action
                                        isButton1Clicked = false
                                        isButton2Clicked = true
                                        isButton3Clicked = false
                                        isButton4Clicked = false
                                        isButton5Clicked = false
                                        selectedButton = 2
                                    }) {
                                        Text("بشرة مختلطة")
                                            .font(Font.custom("Almarai", size: 12))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(isButton2Clicked ? Color(red: 0.97, green: 0.96, blue: 0.95) : Color(red: 0.26, green: 0.37, blue: 0.16))
                                            .padding(.horizontal, 14)
                                            .padding(.vertical, 10)
                                            .background(isButton2Clicked ? Color(red: 0.26, green: 0.37, blue: 0.16) : Color(red: 0.97, green: 0.96, blue: 0.95))
                                        
                                            .cornerRadius(14)
                                    }
                                    
                                    Button(action: {
                                        // Button action
                                        isButton1Clicked = false
                                        isButton2Clicked = false
                                        isButton3Clicked = true
                                        isButton4Clicked = false
                                        isButton5Clicked = false
                                        selectedButton = 3
                                    }) {
                                        
                                        Text("بشرة جافة ")
                                            .font(Font.custom("Almarai", size: 12))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(isButton3Clicked ? Color(red: 0.97, green: 0.96, blue: 0.95) : Color(red: 0.26, green: 0.37, blue: 0.16))
                                            .padding(.horizontal, 14)
                                            .padding(.vertical, 10)
                                            .background(isButton3Clicked ? Color(red: 0.26, green: 0.37, blue: 0.16) : Color(red: 0.97, green: 0.96, blue: 0.95))
                                        
                                            .cornerRadius(14)
                                        //  .frame(width: 96, height:33 )
                                    }
                                    
                                    Button(action: {
                                        // Button action
                                        isButton1Clicked = false
                                        isButton2Clicked = false
                                        isButton3Clicked = false
                                        isButton4Clicked = true
                                        isButton5Clicked = false
                                        selectedButton = 4
                                    }) {
                                        
                                        Text("بشرة دهنية ")
                                            .font(Font.custom("Almarai", size: 12))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(isButton4Clicked ? Color(red: 0.97, green: 0.96, blue: 0.95) : Color(red: 0.26, green: 0.37, blue: 0.16))
                                            .padding(.horizontal, 14)
                                            .padding(.vertical, 10)
                                            .background(isButton4Clicked ? Color(red: 0.26, green: 0.37, blue: 0.16) : Color(red: 0.97, green: 0.96, blue: 0.95))
                                        
                                            .cornerRadius(14)
                                        //  .frame(width: 96, height:33 )
                                    }
                                    
                                    Button(action: {
                                        // Button action
                                        isButton1Clicked = false
                                        isButton2Clicked = false
                                        isButton3Clicked = false
                                        isButton4Clicked = false
                                        isButton5Clicked = true
                                        selectedButton = 5
                                    }) {
                                        
                                        Text("بشرة طبيعية ")
                                            .font(Font.custom("Almarai", size: 12))
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(isButton5Clicked ? Color(red: 0.97, green: 0.96, blue: 0.95) : Color(red: 0.26, green: 0.37, blue: 0.16))
                                            .padding(.horizontal, 14)
                                            .padding(.vertical, 10)
                                            .background(isButton5Clicked ? Color(red: 0.26, green: 0.37, blue: 0.16) : Color(red: 0.97, green: 0.96, blue: 0.95))
                                        
                                            .cornerRadius(14)
                                        //  .frame(width: 96, height:33 )
                                    }
                                    
                                }
                                // .padding()
                                
                                
                                
                            }.padding(.bottom,20)
                            
                            
                            if selectedButton == 1 {
                                
                                VStack(spacing:20) {
                                    
                                    HStack {
                                        Text("غسول")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            
                                                            Image("image 1")
                                                                .resizable()
                                                                .frame(width: 60, height: 150)
                                                                
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 10)
                                                                
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))
                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    HStack {
                                        Text("مرطب")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                    }.padding(.trailing,270)
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    HStack {
                                        Text("سيروم")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                   HStack {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                      
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    HStack {
                                        Text("واقي شمس")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                   HStack {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                      
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    
                                    
                                }
                            } else if selectedButton == 2 {
                                
                                VStack(spacing:20) {
                                    
                                    HStack {
                                        Text("غسول")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            
                                                            Image("image 1")
                                                                .resizable()
                                                                .frame(width: 60, height: 150)
                                                                
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 10)
                                                                
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))
                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    HStack {
                                        Text("مرطب")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                    }.padding(.trailing,270)
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    HStack {
                                        Text("سيروم")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                   HStack {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                      
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    HStack {
                                        Text("واقي شمس")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                   HStack {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                      
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    
                                    
                                }
                            } else if selectedButton == 3 {
                                
                                VStack(spacing:20) {
                                    
                                    HStack {
                                        Text("غسول")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            
                                                            Image("image 1")
                                                                .resizable()
                                                                .frame(width: 60, height: 150)
                                                                
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 10)
                                                                
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))
                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    HStack {
                                        Text("مرطب")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                    }.padding(.trailing,270)
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    HStack {
                                        Text("سيروم")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                   HStack {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                      
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    HStack {
                                        Text("واقي شمس")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                   HStack {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                      
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    
                                    
                                }
                            } else {
                                
                                VStack(spacing:20) {
                                    
                                    HStack {
                                        Text("غسول")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            
                                                            Image("image 1")
                                                                .resizable()
                                                                .frame(width: 60, height: 150)
                                                                
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 10)
                                                                
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))
                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    HStack {
                                        Text("مرطب")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                    }.padding(.trailing,270)
                                    HStack{
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    HStack {
                                        Text("سيروم")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                   HStack {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                      
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    HStack {
                                        Text("واقي شمس")
                                            .font(Font.custom("Tajawal", size: 24))
                                            .fontWeight(.bold)
                                            .foregroundColor(.g1)
                                           
                                         
                                    }.padding(.trailing,270)
                                   HStack {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            HStack(spacing: 15) {
                                                
                                                
                                                
                                                // ZStack {
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                //.cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                // .navigationBarBackButtonHidden(true)
                                                // }
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)
                                                            //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,110)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                                NavigationLink(
                                                    
                                                    destination: SwiftUIView(),
                                                    label: {
                                                        ZStack {
                                                            RoundedRectangle(cornerRadius: 12)
                                                                .stroke(Color(red:0.26,green:0.37, blue:0.16), lineWidth:0.5)
                                                            
                                                                .fill(.we)                     .border(Color.we, width: 0)
                                                                .shadow(radius: 2.5)
                                                                .frame(width: 140, height: 150)     //ZStack {
                                                            
                                                            
                                                            //    .overlay(
                                                            Image("")
                                                                .resizable()
                                                                .frame(width: 100.0, height: 100.0)
                                                            
                                                            //  )
                                                            
                                                            //   .frame(width: 270)
                                                            VStack {
                                                                RoundedRectangle(cornerRadius: 12)
                                                                    .frame(width: 140, height: 40, alignment: .center)
                                                                    .foregroundColor(.g1)
                                                                
                                                                    .cornerRadius(12)
                                                                    .overlay(
                                                                        Text("اسم المنتج")
                                                                            .font(Font.custom("Tajawal", size: 18))
                                                                      
                                                                            .fontWeight(.heavy)
                                                                            .foregroundColor(.white))

                                                                
                                                            }.padding(.top,120)
                                                            //.position(CGPoint(x: 135.0, y: 115))
                                                            //  )
                                                            
                                                            //  }
                                                        }
                                                        
                                                        
                                                    }// label
                                                    
                                                )
                                                
                                            }
                                        }}
                                    
                                    
                                    
                                }
                            }
                            
                            
                            
                        }.padding(.top, 465)
                        
                    }
                }//zstack
                .environment(\.layoutDirection,.rightToLeft)
                .background(Color.back.edgesIgnoringSafeArea(.all))
                
            }   //.padding()
        }
        
        .navigationBarBackButtonHidden(true)
}
}

//HStack{
//                            Image("sun")
//                                .resizable()
//                                .frame(width: 400, height: 200)
//
//                        }

struct ContentView: View {
    let totalSteps = 7
    @State private var currentStep = 0
    let totalSteps1 = 7
    @State private var currentStep1 = 0
    
    var body: some View {
      //  ScrollView {
            VStack {
                ContentView1(totalSteps: totalSteps, currentStep: $currentStep, totalSteps1: totalSteps1, currentStep1: $currentStep1)
                    //.padding()
            }
   //     }
        .background(Color(red: 0.9612024426, green: 0.9364170432, blue: 0.9066403508))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }}

//
//VStack{
//    Text("مرحباً !")
//      .font(
//        Font.custom("Almarai", size: 24)
//          .weight(.bold)
//      )
//      .multilineTextAlignment(.trailing)
//      .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
//      .frame(width: 96, alignment: .topTrailing)
//
//
//    Rectangle()
//      .foregroundColor(.clear)
//      .frame(width: 357, height: 0.5)
//      .background(Color(red: 0.26, green: 0.37, blue: 0.16))
//}//.padding(.bottom,700)


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0

        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xff0000) >> 16) / 255.0
        let g = Double((rgbValue & 0xff00) >> 8) / 255.0
        let b = Double(rgbValue & 0xff) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}
