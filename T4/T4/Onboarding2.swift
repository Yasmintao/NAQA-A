//
//  Onboarding2.swift
//  T4
//
//  Created by Yasmin on 15/05/1445 AH.
//

import SwiftUI

struct Onboarding2: View {
    var body: some View {
        NavigationView {

            ZStack {
                Image("Ellipse 288")
                .frame(width: 0, height: 524)
                .background(Color(red: 0.71, green: 0.74, blue: 0.68).opacity(0.64))
                .offset(x:0 , y:-321)
                VStack{
                    
                    Image("Character")
                        .frame(width: 76.82927, height: 213.76335)
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 361.02216, height: 1)
                        .background(Color(red: 0.41, green: 0.49, blue: 0.32)).padding(-7)
                    
                    
                    Text("هل تعاني من جفاف، دهون، أم مشاكل أخرى؟ سيساعدك نقاء على التعرّف على نوع بشرتك لتقوم برعايتها بشكل صحيح.\n")
                        .font(
                            Font.custom("Cairo", size: 16)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                        .frame(width: 314, height: 78, alignment: .top)
                    
                    
                    
                    NavigationLink(
                        destination: Onboarding3()
                    ){
                        Text("التالي")
                            .font(
                                Font.custom("Tajawal", size: 12)
                                    .weight(.medium)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                    }
                    
                }
                
                
            }.frame(width: 393, height: 852)
                .background(Color(red: 1, green: 0.97, blue: 0.95))
                
        }
        .navigationBarBackButtonHidden(true)
}
}

#Preview {
    Onboarding2()
}
