

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    
    var body: some View {
        
        if isActive {
            LoginPreview()
        } else {
            ZStack {
                Color("green1")
                .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Image("duoEyes")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    
                    Spacer()
                    
                    Image("duolingoLogoWhite")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .padding(.bottom, 20)
                }
                
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
        
        
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}







