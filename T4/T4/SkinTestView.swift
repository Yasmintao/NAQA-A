
//
//  SkinTestView.swift
//  Team4
//
//  Created by Amwaj Alotaibi on 14/05/1445 AH.
//

import SwiftUI

struct SkinTestView: View {
    var body: some View {
        NavigationView {
            
            ScrollView(showsIndicators: false) {
                
                VStack(spacing:40) {
                    
                    VStack {
                        Text("قم بغسل بشرتك بمنظف مناسب وانتظر ما بين ١٥ - ٣٠ دقيقة ، ثم اخترالشكل الأقرب لملمس بشرتك")
                            .font(.body)
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
                    HStack(spacing:75){
                        Text("زيت")
                            .font(.subheadline)
                            .foregroundColor(Color.font)
                            .multilineTextAlignment(.center)
                        
                        Text("طبيعي")
                            .font(.subheadline)
                            .foregroundColor(Color.font)
                            .multilineTextAlignment(.center)
                        
                        Text("جفاف")
                            .font(.subheadline)
                            .foregroundColor(Color.font)
                            .multilineTextAlignment(.center)
                    }
                    
                    
                    
                    NavigationLink(destination: skintype()) {
                        VStack {
                            Image("gaf")
                                .resizable()
                                .foregroundColor(Color(red: 0.93, green: 0.905, blue: 0.884))
                                .frame(width: 200.0, height: 200.0)
                            Text("بشرة جافة")
                                .font(.headline)
                                .foregroundColor(Color.font)
                                .multilineTextAlignment(.center)
                        }
                    }
                    
                    NavigationLink(destination: Skin3()) {
                        VStack {
                            Image("adia")
                                .resizable()
                                .foregroundColor(Color(red: 0.93, green: 0.905, blue: 0.884))
                                .frame(width: 200.0, height: 200.0)
                            
                            Text("بشرة طبيعية")
                                .font(.headline)
                                .foregroundColor(Color.font)
                                .multilineTextAlignment(.center)
                        }
                        
                    }
                    NavigationLink(destination: Skin4()) {
                        VStack {
                            Image("mokt")
                                .resizable()
                                .foregroundColor(Color(red: 0.93, green: 0.905, blue: 0.884))
                                .frame(width: 200.0, height: 200.0)
                            
                            Text("بشرة مختلطة")
                                .font(.headline)
                                .foregroundColor(Color.font)
                                .multilineTextAlignment(.center)
                        }
                        
                    }
                    NavigationLink(destination: Skin2()) {
                        VStack {
                            Image("dohn")
                                .resizable()
                                .foregroundColor(Color(red: 0.93, green: 0.905, blue: 0.884))
                                .frame(width: 200.0, height: 200.0)
                            
                            Text("بشرة دهنية")
                                .font(.headline)
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
    }
#Preview {
    SkinTestView()
}
