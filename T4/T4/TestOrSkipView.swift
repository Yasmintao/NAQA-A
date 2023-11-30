//
//  TestOrSkipView.swift
//  Team4
//
//  Created by Amwaj Alotaibi on 14/05/1445 AH.
//

import SwiftUI


    struct TestOrSkipView: View {
        var body: some View {
            NavigationView{
                VStack (spacing:80){
                    ZStack {
                        Image("Skin")
                            .resizable()
                            .frame(width: 300.0, height: 300.0)
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    
                    Text("يساعدك نقاء على إيجاد الحلول المناسبة لمشاكل بشرتك، و يساعدك على الالتزام بروتين عنايتك اليومية بشكل مستمر")
                        .font(.custom("Tajwal", size: 21))
                        .foregroundColor(Color.font)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(
                        
                        destination: SkinTestView(),
                        
                        label: {
                            Text("اختبر نوع بشرتك")
                                .font(.custom("Tajwal", size: 23))
                                .fontWeight(.regular)
                                .frame(width: 300.0, height: 55.0)
                                .background(Color.g1)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .shadow(radius: 1)
                        })
                    NavigationLink(
                        
                        destination: ContentView(),
                        
                        label: {
                            Text("تخطي")
                                .font(.custom("Tajwal", size: 21))
                                .foregroundColor(Color.font)
                                .multilineTextAlignment(.center)
                            //                                    .shadow(radius: 5)
                        })
                }
                
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.back)
                .edgesIgnoringSafeArea(.all)
                
            }
            
            .navigationBarBackButtonHidden(true)
}
    }

    struct TestOrSkipView_Previews: PreviewProvider {
        static var previews: some View {
            TestOrSkipView()
        }
    }


