//
//  TestOrSkipView.swift
//  Team4
//
//  Created by Amwaj Alotaibi on 14/05/1445 AH.
//

import SwiftUI


    struct TestOrSkipView: View {
        var body: some View {
            
            VStack (spacing:80){
                ZStack {
                      Image("Skin")
                          .resizable()
                          .frame(width: 300.0, height: 300.0)
                          .aspectRatio(contentMode: .fit)
                    
                  }
                
                Text("يساعدك نقاء على إيجاد الحلول المناسبة لمشاكل بشرتك، و يساعدك على الالتزام بروتين عنايتك اليومية بشكل مستمر")
                    .font(.custom("Roboto", size: 21))
                     .foregroundColor(Color.font)
                     .multilineTextAlignment(.center)
       
                    Button(action: {
                
                           }) {
                               Text("اختبر نوع بشرتك")
                                   .font(.custom("Roboto", size: 23))
                                   .fontWeight(.regular)
                                   .frame(width: 300.0, height: 55.0)
                                   .background(Color.bott)
                                   .foregroundColor(.font)
                                   .cornerRadius(30)
                                   .shadow(radius: 1)
                           }
                    Button(action: {
 
                           }) {
                               Text("تخطي")
                                   .font(.custom("Roboto", size: 21))
                                    .foregroundColor(Color.font)
                                    .multilineTextAlignment(.center)
//                                    .shadow(radius: 5)
                           }
                   }

                           
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.back)
            .edgesIgnoringSafeArea(.all)
            
            
        }
    }

    struct TestOrSkipView_Previews: PreviewProvider {
        static var previews: some View {
            TestOrSkipView()
        }
    }

