import SwiftUI

struct Onboarding1: View {
    var body: some View {
        NavigationView {
            //the edite for the whole backgrounf
            ZStack{
                Image("Ellipse 288")
                    .frame(width: 0, height: 524)
                    .background(Color(red: 0.71, green: 0.74, blue: 0.68).opacity(0.64))
                    .offset(x: 0, y: -321)
                
                    .background(Color("Color"))
                
                TabView {
                    //onboarding1
                    VStack(spacing: 30) {
                        Image("Group 19")
                            .frame(width: 192.54843, height: 226.05661)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 390, height: 2)
                            .background(Color(red: 0.41, green: 0.49, blue: 0.32))
                            .padding(-30)
                        Text("نقاء هنا لمساعدتك على تحقيق بشرة صحية ويكشف لك أسرار العناية الفعّالة.")
                            .font(.custom("Cairo", size: 18))
                            .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                            .frame(width: 261, alignment: .top)
                        
                    }
                    //onboarding2
                    VStack(spacing:15){
                        
                        Image("Character")
                            .frame(width: 76.82927, height: 213.76335).padding(-7)
                        
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 370, height: 2)
                        
                            .background(Color(red: 0.41, green: 0.49, blue: 0.32)).padding(7)
                        
                        
                        Text("ان كنت تعاني من جفاف، دهون، أم مشاكل أخرى، سيساعدك نقاء على التعرّف على نوع بشرتك لتقوم برعايتها بشكل صحيح.\n")
                            .font(
                                Font.custom("Cairo", size: 16)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                            .frame(width: 314, height: 78, alignment: .top)
                    }
                    //onboarding3
                    VStack(spacing: 30) {
                        Image("rafiki")
                            .frame(width: 65.65182, height: 246.52766)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 390, height: 2)
                            .background(Color(red: 0.41, green: 0.49, blue: 0.32))
                            .padding(-22)
                        Text("نقاء يشجعك أيضاً على الالتزام بروتين عنايتك اليومي بشكل بسيط و سهل للمحافظة على بشرة صحية \n\n")
                            .font(
                                Font.custom("Cairo-Black", size: 16)
                            )
                            .foregroundColor(Color(red: 0.26, green: 0.37, blue: 0.16))
                            .frame(width: 337, height: 48, alignment: .top)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                VStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        Text("تخطي")
                           
                            .font(Font.custom("Cairo", size: 16).weight(.semibold))
                            .foregroundColor(.font)
                            .padding(12)
//                            .background(Color.font)
                            .cornerRadius(8)
                            .padding(16)
                    }
                } .offset(x:140 , y:-700)
            }
        }
    }
}

                struct Onboarding1_Previews: PreviewProvider {
                    static var previews: some View {
                        Onboarding1()
                    }
                }
