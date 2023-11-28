//
//  SkinTestView.swift
//  Team4
//
//  Created by Amwaj Alotaibi on 14/05/1445 AH.
//

import SwiftUI

struct SkinTestView: View {
    var body: some View {

        ScrollView(showsIndicators: false) {
                
                VStack(spacing:30) {
                 
                    VStack {
                        Text("قم بغسل بشرتك بمنظف مناسب وانتظر ما بين ١٥ - ٣٠ دقيقة ، ثم اخترالشكل الأقرب لملمس بشرتك")
                                .font(.custom("Roboto", size: 19))
                                .foregroundColor(Color.font)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.top,90)
                         
                        
                        
                    HStack(spacing:80){
                            
                            Circle()
                                .fill(Color.c1)
                                .frame(width: 30, height: 30)
                          
                            Circle()
                                .fill(Color.c2)
                                .frame(width: 30, height: 30)
                         
                            Circle()
                                .fill(Color.c3)
                                .frame(width: 30, height: 30)
                          
                                            }
                        HStack(spacing:70){
                            Text("زيت")
                                .font(.custom("Roboto", size: 21))
                                .foregroundColor(Color.font)
                                .multilineTextAlignment(.center)
                         
                            Text("طبيعي")
                                .font(.custom("Roboto", size: 21))
                                .foregroundColor(Color.font)
                                .multilineTextAlignment(.center)
                          
                            Text("جفاف")
                                .font(.custom("Roboto", size: 21))
                                .foregroundColor(Color.font)
                                .multilineTextAlignment(.center)
                        }
   
                        
                        Button(action: {
                         
                        }) {
                            VStack {
                                Image("gaf")
                                    .resizable()
                                    .foregroundColor(Color(red: 0.93, green: 0.905, blue: 0.884))
                                    .frame(width: 200.0, height: 200.0)
                                Text("بشرة جافة")
                                    .font(.custom("Roboto", size: 21))
                                    .foregroundColor(Color.font)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        
                        Button(action: {
                        }) {
                            VStack {
                                Image("adia")
                                    .resizable()
                                    .foregroundColor(Color(red: 0.93, green: 0.905, blue: 0.884))
                                    .frame(width: 200.0, height: 200.0)
                                
                            Text("بشرة عادية")
                                .font(.custom("Roboto", size: 21))
                                .foregroundColor(Color.font)
                                .multilineTextAlignment(.center)
                            }
                            
                        }
                        
                    Button(action: {
                    }) {
                        VStack {
                            Image("mokt")
                                .resizable()
                                .foregroundColor(Color(red: 0.93, green: 0.905, blue: 0.884))
                                .frame(width: 200.0, height: 200.0)
                        
                        Text("بشرة مختلطة")
                            .font(.custom("Roboto", size: 21))
                            .foregroundColor(Color.font)
                            .multilineTextAlignment(.center)
                        }
                        
                    }
                        
                        Button(action: {
                        }) {
                            VStack {
                                Image("dohn")
                                    .resizable()
                                    .foregroundColor(Color(red: 0.93, green: 0.905, blue: 0.884))
                                    .frame(width: 200.0, height: 200.0)
        
                                Text("بشرة دهنية")
                                    .font(.custom("Roboto", size: 21))
                                    .foregroundColor(Color.font)
                                    .multilineTextAlignment(.center)
                            }
                            
                    }
                }
            }

            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.back) // Set custom color
            .edgesIgnoringSafeArea(.all)
            
        }
    }
#Preview {
    SkinTestView()
}
