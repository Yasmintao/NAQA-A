import SwiftUI

struct logo: View {
    @State private var isActive: Bool = false
    @State private var scale: CGFloat = 6
    
    var body: some View {
        VStack{
            
            ZStack {
            
                
                Image("logo1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 30)
                    .scaleEffect(scale)
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 237/255, green: 231/255, blue: 225/255)) // Set custom color
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                withAnimation(.easeIn(duration: 3)) {
                    self.scale = 15
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }}
        }}}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        logo()
    }
}

