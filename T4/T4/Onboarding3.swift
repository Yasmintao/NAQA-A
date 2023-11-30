//
//  Onboarding3.swift
//  T4
//
//  Created by Yasmin on 15/05/1445 AH.
//

import SwiftUI

struct Onboarding3: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                Image("Ellipse 288")
                .frame(width: 0, height: 524)
                .background(Color(red: 0.71, green: 0.74, blue: 0.68).opacity(0.64))
//                .padding(.vertical,90)
                .offset(x:0 , y:-321)
                
                VStack (spacing:30){
                    
                    Image("rafiki")
                    .frame(width: 65.65182, height: 246.52766)
                    
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 361.02216, height: 1)
                      .background(Color(red: 0.41, green: 0.49, blue: 0.32)).padding(-22)
                    
                    Text("نقاء يشجعك أيضاً على الالتزام بروتين عنايتك اليومي بشكل بسيط و سهل للمحافظة على بشرة صحية \n\n")
                      .font(
                        Font.custom("Cairo-Black", size: 16)
//                          .weight(.semibold)
                      )
                      .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                      .frame(width: 337, height: 48, alignment: .top)
                    
                    
                    NavigationLink(
                        destination: TestOrSkipView()
                    ){
                        Text("التالي")
                            .font(
                                (Font.custom("Cairo", size: 14))
                                    .weight(.medium)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                    }
                }
                
                
                
                
            }
            .frame(width: 393, height: 852)
            .background(Color(red: 1, green: 0.97, blue: 0.95))
        }
        .navigationBarBackButtonHidden(true)
}
}

#Preview {
    Onboarding3()
}
