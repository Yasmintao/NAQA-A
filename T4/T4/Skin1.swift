//
//  skintype.swift
//  Team4
//
//  Created by Yasmin on 12/05/1445 AH.
//

import SwiftUI

struct skintype: View {
    var body: some View {
        NavigationView {
            ZStack{
                
                VStack(spacing:50) {
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 159, height: 159)
                        .background(
                            Image("Ellipse 212")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            
                        )
                        .cornerRadius(159)
                    // .padding(14)
                    
                    
                    
                    
                    
                    Text("بشرتك جافة وتفتقر إلى الرطوبة. ستعمل منتجات العناية بالبشرة المناسبة على تغذية بشرتك وإصلاح حاجزها الحرج ومنع فقدان الرطوبة.\n\n\nهل هو نوع بشرتك؟")
                    
                        .font(Font.custom("Tajawal", size: 15))
                        .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                        .multilineTextAlignment(.center)
                        .padding(.trailing)
                        .frame(width: 296, height: 107, alignment: .trailing)
                    
                    // .padding()
                    
                    
                    NavigationLink(
                        destination: ContentView()
                    ){
                                   Text("العثور على العناية بالبشرة المناسبة")
                        .font(
                            Font.custom("Tajawal", size: 12)
                                .weight(.bold)
                        )
                                   
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                                   
                            .padding(0)
                            .frame(width: 210, height: 55, alignment: .center)
                            .background(Color(red: 0.26, green: 0.37, blue: 0.16))
                                   
                            .cornerRadius(10)
                            .foregroundColor(.clear)
                            .frame(width: 210, height: 55)
                            .background(.white)
                                   
                            .cornerRadius(10)
                     }
                
                    NavigationLink(
                        destination: ContentView()
                    ){
                        Text("تخطي")
                            .font(Font.custom("Inter", size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                            .frame(width: 100, height: 25, alignment: .center)
                    }
                 }.padding(.top,40 )
            }
            
            
            
            
            
        }
        .background(Color(red: 1, green: 0.97, blue: 0.95)) }
}
    


#Preview {
    skintype()
}

