//
//  skintype.swift
//  Team4
//
//  Created by Yasmin on 12/05/1445 AH.
//

import SwiftUI

struct Skin3: View {
    var body: some View {
        
        NavigationView {
            
            ZStack{
                
                VStack(spacing:50) {
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 159, height: 159)
                        .background(
                            Image("Ellipse 217")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            
                        )
                        .cornerRadius(159)
                    // .padding(14)
                    
                    
                    
                    
                    
                    Text("لديك بشرة عادية. إن منتجات العناية بالبشرة المناسبة ستبقي بشرتك تبدو صحية وناعمة ورطبة ومحمية من الضغوطات البيئية.\n\n\nهل هو نوع بشرتك؟")
                        .offset(x: 0, y:70)

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
                                Font.custom("Tajawal", size: 16)
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
                    }.offset(x: 0, y:90)
                    
                    
                    
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.back) // Set custom color
                    .edgesIgnoringSafeArea(.all)
            
            
            
            
            
        }.navigationBarBackButtonHidden(true)
        .background(Color(red: 1, green: 0.97, blue: 0.95)) }
}
    


#Preview {
    Skin3()
}

