//
//  ProfileView.swift
//  DuolingoClone
//
//  Created by Victor Soares on 03/06/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .center) {
                

                Image("duoProfile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130)
                    .padding()
                
                Text("Volte pra sua conta!")
                    .foregroundColor(Color("titleColor"))
                    .font(.system(size: 25))
                    .bold()
                    .padding(.bottom, 8)
                
                Group {
                    Text("Escolha uma das contas salvas neste")
                    Text("dispositivo:")
                }
                .font(.system(size: 20))
                .foregroundColor(Color("textColor"))
                
                VStack(alignment: .center) {
                    NavigationLink(destination: LoadingView()) {
                        HStack(alignment: .center){
                            Spacer()
                            Image("userSmall")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 55)
                                .cornerRadius(100)
                                
                            Spacer()
                            
                            VStack(alignment: .leading) {
                                Text("victoorsoaress")
                                    .font(.system(size: 20))
                                    .bold()
                                    .padding(.bottom, 1)
                                Text("victoorsoaressq@gmail.com")
                                    .foregroundColor(Color("titleColor"))
                            }
                            Spacer()
                            
                            Image("angleRight")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20)
                            
                            Spacer()
                                
                        }.frame(height: 80)
                    }
                    
                    
                    
                    Rectangle()
                        .frame(height: 1)
                        .background(Color("gray1"))
                    
                    NavigationLink(destination: SingInView()) {
                        HStack{
                            
                            Image("plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .cornerRadius(100)
                                
                                .padding(.leading, 30)
                            
                            
                            Text("Adicionar outra conta")
                                .font(.system(size: 20))
                                .bold()
                                .foregroundColor(Color("textColor"))
                                .padding(.leading, 20)
                                    
                            
                            Spacer()
                            
                            
                                
                        }.frame(height: 80)
                             
                    }
                    
                    
                }
                    
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("gray1"), lineWidth: 2)
                )
                .frame(maxWidth: .infinity)
                .padding(.top, 30)
                .padding(.horizontal, 15)
                
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                        
                    } label: {
                        Text("Voltar")
                            .font(.system(size: 21))
                            .foregroundColor(Color.gray)
                            .bold()

                    }
                }.padding(.top, 50)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
        }
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
