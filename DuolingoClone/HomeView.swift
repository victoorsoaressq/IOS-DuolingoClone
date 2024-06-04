//
//  HomeView.swift
//  DuolingoClone
//
//  Created by Victor Soares on 03/06/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    
                    VStack {
                        Spacer()
                        
                        HStack { // Header
                            
                            
                            Image("us")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                                .padding(.trailing)
                            
                            Spacer()
                            
                            HStack {
                                Image("fireGray")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                
                                Text("0")
                                    .foregroundColor(Color("fireGrayColor"))
                                    .bold()
                                    .font(.title3)
                            }
                            
                            Spacer()
                            
                            HStack {
                                Image("diamond")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25)
                                
                                Text("3702")
                                    .foregroundColor(Color("blue1"))
                                    .bold()
                                    .font(.title3)
                            }
                            
                            Spacer()
                            
                            HStack {
                                Image("heart")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 35)
                                
                                Text("5")
                                    .foregroundColor(Color.red)
                                    .bold()
                                    .font(.title3)
                            }
                            

                        }// Header
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        
                        ZStack {
                            Rectangle()
                                .fill(Color("blue1"))
                                .frame(height: 90)
                                .cornerRadius(10)
                            HStack(alignment: .center) {
                                
                                VStack(alignment: .leading) {
                                    Text("SEÇÃO 2, UNIDADE 1")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white).opacity(0.5)
                                        
                                    
                                    Text("Cumprimente pessoas")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                }
                                
                                
                                Spacer()
                                
                                Image("bookSecao")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 35)
                                    
                                
                            }
                            .padding()
                            
                            
                        }
                        .frame(maxWidth: .infinity)
                        
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 190)
                    .padding(.horizontal)
                    .background(Color.white)
                    .zIndex(2)
                    
                    
                    ScrollView {
                        
                        
                        VStack {
                            Image("button1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                            
                            Image("button2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90)
                                .padding(.trailing, 100)
                            
                            Image("button3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .padding(.trailing, 150)
                            
                            Image("button1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 110)
                                .padding(.trailing, 90)
                            
                            Image("button1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                            
                            Image("button1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .padding(.leading, 100)
                            
                            Image("button3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .padding(.leading, 150)
                        }
                        .padding(.top, 5)
                        .frame(maxWidth: .infinity)
                        
                    } // ScrollView
                    .frame(maxWidth: .infinity)
                    .zIndex(1)
                    Rectangle()
                        .fill(Color("gray1"))
                        .frame(maxWidth: .infinity, maxHeight: 2)
                        .offset(y: -8)
                    VStack {
                        
                        HStack { // Menu
                            Spacer()
                            
                            Image("homeMenu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                                .padding(.trailing)
                            
                            
                            Image("sonsMenu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                                .padding(.trailing)
                            
                            Image("bauMenu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                                .padding(.trailing)
                            
                            Image("praticarMenu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                                .padding(.trailing)
                            
                            Image("ligaMenu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                                .padding(.trailing)
                            
                            Image("opMenu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35)
                                .padding(.trailing)
                            
                        }
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: 80)
                    .padding(.horizontal)
                    .background(Color.white)
                   
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
