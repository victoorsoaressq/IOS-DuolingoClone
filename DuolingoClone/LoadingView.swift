//
//  LoadingView.swift
//  DuolingoClone
//
//  Created by Victor Soares on 03/06/24.
//

import SwiftUI

struct LoadingView: View {
    @State private var isActive = false
    @State private var isAnimated = false
    
    var body: some View {
        
        if isActive {
            HomeView()
        } else {
            VStack {
                Image("duoBook")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180)
                    .padding()
                
                HStack {
                    Text("AGUARDE")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(Color("textColor"))
                    HStack {
                        Circle()
                            .fill(Color("textColor"))
                            .frame(width: 10, height: 10)
                            .scaleEffect(isAnimated ? 1.0 : 0.5)
                            .animation(Animation.easeInOut(duration: 0.5).repeatForever())
                            
                        Circle()
                            .fill(Color("textColor"))
                            .frame(width: 10, height: 10)
                            .scaleEffect(isAnimated ? 1.0 : 0.5)
                            .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.3))
                        
                        Circle()
                            .fill(Color("textColor"))
                            .frame(width: 10, height: 10)
                            .scaleEffect(isAnimated ? 1.0 : 0.5)
                            .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.6))
                    }
                    .onAppear {
                        self.isAnimated = true
                    }
                }
                
                
            }
            .navigationBarHidden(true)
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

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
