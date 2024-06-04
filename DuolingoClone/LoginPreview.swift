//
//  LoginPreview.swift
//  DuolingoClone
//
//  Created by Victor Soares on 29/05/24.
//

import SwiftUI

struct LoginPreview: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Spacer()
                
                Image("duoLogin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                
                Image("duolingoLogoGreen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding()
                
                Text("Aprenda de graça. Para sempre.")
                    .font(.system(size: 20))
                    .foregroundColor(Color("textColor"))
                
                Spacer()
                    .frame(height: 220)
                
                Button(action: {
                    
                }, label: {
                    NavigationLink(destination: ProfileView()) {
                        Text("COMEÇAR")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity, maxHeight: 52)
                            .background(Color("green2"))
                            .cornerRadius(10)
                    }

                })
                .padding(.bottom, 8)
                
                NavigationLink(destination: SingInView()) {
                    Text("JÁ TENHO UMA CONTA")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(Color("green2"))
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay( /// apply a rounded border
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("gray1"), lineWidth: 2)
                        )
                }
                
                
            }
            .padding()
            
        }
    }
}




struct LoginPreview_Previews: PreviewProvider {
    static var previews: some View {
        LoginPreview()
    }
}
