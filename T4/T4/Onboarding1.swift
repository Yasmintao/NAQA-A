//
//  Onboarding1.swift
//  T4
//
//  Created by Yasmin on 15/05/1445 AH.
//

import SwiftUI

struct Onboarding1: View {
    var body: some View {
        NavigationView {

        
            ZStack {
                Image("Ellipse 288")
                .frame(width: 0, height: 524)
                .background(Color(red: 0.71, green: 0.74, blue: 0.68).opacity(0.64))
                .offset(x:0 , y:-321)
              
                VStack (spacing:30){
                    
                    
                    Image("Group 19")
                        .frame(width: 192.54843, height: 226.05661)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 361.02216, height: 1)
                        .background(Color(red: 0.41, green: 0.49, blue: 0.32)) .padding(-30)
                    Text(" نقاء هنا لمساعدتك على تحقيق بشرة صحية و يكشف لك أسرار العناية الفعّالة.\n")
                        .font(.custom("Cairo", size: 18))

                        .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                        .frame(width: 261, alignment: .top)
                    
                    NavigationLink(
                        destination: Onboarding2()
                    ){
                        Text("التالي")
                            .font(
                                Font.custom("Cairo", size: 12)
                                    .weight(.medium)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                    }
                    
                    
                }
                
            } .frame(width: 393, height: 852)
            .background(Color(red: 1, green: 0.97, blue: 0.95))        }


}
}

#Preview {
    Onboarding1()
}
