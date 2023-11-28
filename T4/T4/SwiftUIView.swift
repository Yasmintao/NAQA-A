//
//  uu.swift
//  project 3
//
//  Created by Elham on 13/05/1445 AH.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 333, height: 453)
                    .background(Color(red: 0.97, green: 0.96, blue: 0.95))
                
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(red: 0.26, green: 0.37, blue: 0.16), lineWidth: 1)
                        
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 159, height: 37)
                    .background(Color(red: 0.97, green: 0.96, blue: 0.95))
                
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(red: 0.26, green: 0.37, blue: 0.16), lineWidth: 1)
                        
                    )
                    .padding(.vertical,-262)
                    .padding(.horizontal,-160)
                
               
                
                
            }}
        .environment(\.layoutDirection, .rightToLeft)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.back.edgesIgnoringSafeArea(.all))
        
    }}

#Preview {
    SwiftUIView()
}

